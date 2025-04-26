<script lang="ts">
	import type { IconProps } from '$lib/types/icon-props';
	import { DEFAULT_ICON_PROPS } from '$lib/types/icon-props';

	let {
		size = DEFAULT_ICON_PROPS.size,
		color = DEFAULT_ICON_PROPS.color,
		className = DEFAULT_ICON_PROPS.className
	}: IconProps = $props();
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
	<polyline points="16 18 22 12 16 6"></polyline>
	<polyline points="8 6 2 12 8 18"></polyline>
</svg>
