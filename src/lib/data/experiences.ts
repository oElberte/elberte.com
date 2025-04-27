import type { TECHNOLOGIES } from '$lib/types/technologies';

export interface Experience {
	title: string;
	company: string;
	image: string;
	href?: string;
	description: string;
	technologies: Array<keyof typeof TECHNOLOGIES>;
}

export const experiences: Experience[] = [
	{
		title: 'Software Engineer / Tech Lead',
		company: 'MusicPlayce - Project',
		image: '/musicplayce.png',
		href: 'https://musicplayce.com',
		description: `Developed and maintained full-stack software solutions for MusicPlayce, handling both mobile and web application components. Key projects included the core "MusicPlayce" mobile app for music streaming and discovery, and engineering a complementary web portal`,
		technologies: ['FLUTTER', 'FIREBASE', 'CLOUDFIRESTORE', 'GOLANG', 'GCP', 'DOCKER', 'CICD']
	},
	{
		title: 'Software Engineer / Tech Lead',
		company: 'GAV Resorts - Project',
		image: '/gavresorts.png',
		description: `Technical lead architecting, developing, and maintaining full-stack solutions, owning critical systems. Led the rebuild of the "Voucher" system (sales/partner interfaces, PDF generation)`,
		technologies: [
			'SVELTE',
			'TAILWINDCSS',
			'TYPESCRIPT',
			'NEON',
			'DRIZZLE',
			'POSTGRESQL',
			'DOCKER',
			'GCP',
			'CICD'
		]
	},
	{
		title: 'Software Engineer',
		company: 'Zellor - Project',
		image: '/zellor.png',
		href: 'https://zellor.com',
		description: `Developed and maintained full-stack software solutions, progressing from front-end focus to full-stack responsibilities. Key projects included the core "Zellor" portal and Shopify application.`,
		technologies: [
			'SVELTE',
			'TYPESCRIPT',
			'NESTJS',
			'SHOPIFY',
			'AWS',
			'PRISMA',
			'POSTGRESQL',
			'DOCKER',
			'CICD'
		]
	}
];
