<script lang="ts">
	import { FormErrorsContext } from '$lib/actions/form-errors.svelte';
	import { getContext } from 'svelte';
	import type { ClassValue, HTMLInputAttributes } from 'svelte/elements';

	type BaseInputProps = HTMLInputAttributes & {
		label?: string;
		class?: ClassValue | null;
	};

	let { class: className, label, ...props }: BaseInputProps = $props();

	const form = getContext<FormErrorsContext>(FormErrorsContext.key);

	let error = $derived(props.name ? form?.errors[props.name] : null);
</script>

<div class="mb-6">
	<label for={props.id} class="mb-2 block">{label}</label>

	<input
		{...props}
		class="w-full rounded border bg-purple-950 p-3 focus:outline-none"
		class:border-purple-700={!error}
		class:focus:border-purple-400={!error}
		class:focus:ring-primary-600={!error}
		class:border-red-600={error}
		class:focus:border-red-400={error}
		class:focus:ring-red-600={error}
	/>

	{#if error}
		<p class="mt-1 text-xs text-red-500">{error}</p>
	{/if}
</div>
