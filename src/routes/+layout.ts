import { injectAnalytics } from '@vercel/analytics/sveltekit';

export function load() {
	injectAnalytics();
}
