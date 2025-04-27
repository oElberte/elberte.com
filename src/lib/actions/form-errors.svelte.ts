import { parseFormData } from '$lib/util/parse-form-data';
import type { Action } from 'svelte/action';
import type { ZodIssue, ZodType } from 'zod';

export class FormErrorsContext {
	static readonly key = 'form-errors';

	private zodIssues = $state<ZodIssue[]>([]);
	private submitted = $state(false);

	constructor(private readonly schema: ZodType) {}

	errors: Record<string, string> = $derived.by(() => {
		if (!this.submitted) {
			return {};
		}

		const result: Record<string, string> = {};
		for (const error of this.zodIssues) {
			result[error.path.join('.')] = error.message;
		}
		return result;
	});

	action: Action<HTMLFormElement> = (node: HTMLFormElement) => {
		const inputListener = () => {
			const formData = new FormData(node);

			const { errors } = parseFormData(formData, this.schema);
			this.zodIssues = errors ?? [];
		};

		const submitListener = async () => {
			this.submitted = true;

			if (this.zodIssues.length > 0) {
				const firstErrorPath = this.zodIssues[0].path.join('.');

				const firstErrorField = node.querySelector(`[name="${firstErrorPath}"]`) as HTMLElement;

				if (firstErrorField) {
					firstErrorField.scrollIntoView({
						behavior: 'smooth',
						block: 'center'
					});
					firstErrorField.focus();
				}
			}
		};

		node.addEventListener('input', inputListener);
		node.addEventListener('submit', submitListener);

		return {
			destroy() {
				node.removeEventListener('input', inputListener);
				node.removeEventListener('submit', submitListener);
			}
		};
	};
}
