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
	width={size}
	height={size}
	stroke={color}
	fill={color}
	class={className}
	xmlns="http://www.w3.org/2000/svg"
	x="0px"
	y="0px"
	viewBox="0 0 48 48"
>
	<circle cx="24" cy="24" r="20" fill={color}></circle><polygon
		fill="#000"
		points="32,19.13 32,22.45 24,18.66 16,22.45 16,19.13 24,15.34"
	></polygon><polygon fill="#000" points="32,25.13 32,28.45 24,24.66 16,28.45 16,25.13 24,21.34"
	></polygon><polygon fill="#000" points="29.43,30.45 23,33.1 23,29.85 25.77,28.71"></polygon>
</svg>
