import { ZodError, type ZodIssue, type ZodType, type ZodTypeDef } from 'zod';
import { toSerializablePojo } from './to-pojo';

type ParseReturn<T> = {
	result?: T;
	errors?: ZodIssue[];
};

export function parseFormData<T, Input = T>(
	formData: FormData,
	schema: ZodType<T, ZodTypeDef, Input>
): ParseReturn<T> {
	const entries = Array.from(formData.entries());

	const dataAsObject = entries.reduce(
		(acc, [k, v]) => {
			acc[k] = v;
			return acc;
		},
		{} as Record<string, unknown>
	);

	try {
		const validData = schema.parse(dataAsObject);
		return { result: validData };
	} catch (e) {
		if (e instanceof ZodError) {
			return { errors: toSerializablePojo(e.errors).filter((e) => e != undefined) };
		}
		return { errors: [] };
	}
}
