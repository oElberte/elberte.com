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
	<circle cx="6" cy="6" r="3"></circle>
	<circle cx="6" cy="18" r="3"></circle>
	<circle cx="18" cy="18" r="3"></circle>
	<circle cx="18" cy="6" r="3"></circle>
	<line x1="6" y1="9" x2="6" y2="15"></line>
	<line x1="9" y1="6" x2="15" y2="6"></line>
	<line x1="18" y1="9" x2="18" y2="15"></line>
	<line x1="9" y1="18" x2="15" y2="18"></line>
	<line x1="9" y1="9" x2="15" y2="15"></line>
</svg>
