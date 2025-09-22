import gavresortsImage from '$lib/images/gavresorts.png';
import musicplayceImage from '$lib/images/musicplayce.png';
import farsoftImage from '$lib/images/farsoftsystems.png';
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
		title: 'Mobile Engineer',
		company: 'GAV Resorts',
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
		company: 'Farsoft Systems',
		image: farsoftImage,
		description: `Architected and led the large-scale full-stack migration of legacy CRM and ERP systems to a modern, scalable architecture, developing critical components and integrating diverse modules with REST APIs. This initiative applied DevOps practices to establish CI/CD pipelines.`,
		technologies: [
			'FLUTTER',
			'SVELTE',
			'TYPESCRIPT',
			'GOLANG',
			'AWS',
			'POSTGRESQL',
			'DOCKER',
			'CICD'
		]
	},
	{
		title: 'Mobile Engineer',
		company: 'MusicPlayce',
		image: musicplayceImage,
		href: 'https://musicplayce.com',
		description: `Developed and maintained full-stack software solutions for MusicPlayce, handling both mobile and web application components. Key projects included the core "MusicPlayce" mobile app for music streaming and discovery, and engineering a complementary web portal.`,
		technologies: ['FLUTTER', 'FIREBASE', 'CLOUDFIRESTORE', 'GOLANG', 'GCP', 'DOCKER', 'CICD']
	}
];
