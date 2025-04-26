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
	<polygon points="12 2 2 7 12 12 22 7 12 2"></polygon>
	<polyline points="2 17 12 22 22 17"></polyline>
	<polyline points="2 12 12 17 22 12"></polyline>
</svg>
