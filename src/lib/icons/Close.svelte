<script lang="ts">
	import type { IconProps } from '$lib/types/icon-props';
	import { DEFAULT_ICON_PROPS } from '$lib/types/icon-props';

	export let size: number = DEFAULT_ICON_PROPS.size;
	export let color: string = DEFAULT_ICON_PROPS.color;
	export let className: string = DEFAULT_ICON_PROPS.className;
</script>

<svg
	xmlns="http://www.w3.org/2000/svg"
	width={size}
	height={size}
	viewBox="0 0 24 24"
	fill="none"
	stroke={color}
	stroke-width="2"
	stroke-linecap="round"
	stroke-linejoin="round"
	class={className}
>
	<line x1="18" y1="6" x2="6" y2="18"></line>
	<line x1="6" y1="6" x2="18" y2="18"></line>
</svg>
