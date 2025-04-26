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
	fill={color}
	stroke={color}
	stroke-width="2"
	stroke-linecap="round"
	stroke-linejoin="round"
	class={className}
>
	<path
		d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"
	></path>
</svg>
