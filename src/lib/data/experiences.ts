import gavresortsImage from '$lib/images/gavresorts.png';
import musicplayceImage from '$lib/images/musicplayce.png';
import zellorImage from '$lib/images/zellor.png';
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
		title: 'Tech Lead Mobile',
		company: 'GAV Resorts - Project',
		image: gavresortsImage,
		description: `Architected a Flutter app's integration with a distributed Nest.js/Go backend. I led a legacy system rebuild, achieving an 80% efficiency gain and 45% cost reduction, and executed a database migration from MongoDB to PostgreSQL that boosted query performance by 50%.`,
		technologies: [
			'FLUTTER',
			'FIREBASE',
			'SVELTE',
			'DRIZZLE',
			'POSTGRESQL',
			'DOCKER',
			'GCP',
			'AWS',
			'CICD'
		]
	},
	{
		title: 'Mobile Engineer',
		company: 'MusicPlayce - Project',
		image: musicplayceImage,
		href: 'https://musicplayce.com',
		description: `Developed and maintained full-stack software solutions for MusicPlayce, handling both mobile and web application components. Key projects included the core "MusicPlayce" mobile app for music streaming and discovery, and engineering a complementary web portal.`,
		technologies: ['FLUTTER', 'FIREBASE', 'CLOUDFIRESTORE', 'GOLANG', 'GCP', 'DOCKER', 'CICD']
	},
	{
		title: 'Software Engineer',
		company: 'Zellor - Project',
		image: zellorImage,
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
