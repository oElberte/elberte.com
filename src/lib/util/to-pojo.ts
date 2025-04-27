export function toSerializablePojo<T extends object, R = T>(nonPojo: T) {
	return JSON.parse(JSON.stringify(nonPojo)) as R;
}
