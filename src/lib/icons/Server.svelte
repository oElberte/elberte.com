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
	<rect x="2" y="2" width="20" height="8" rx="2" ry="2"></rect>
	<rect x="2" y="14" width="20" height="8" rx="2" ry="2"></rect>
	<line x1="6" y1="6" x2="6.01" y2="6"></line>
	<line x1="6" y1="18" x2="6.01" y2="18"></line>
</svg>
