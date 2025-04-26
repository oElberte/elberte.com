export type IconProps = {
	size?: number;
	color?: string;
	className?: string;
};

/**
 * Default values for icon props
 */
export const DEFAULT_ICON_PROPS = {
	size: 24,
	color: 'currentColor',
	className: ''
} as const;
