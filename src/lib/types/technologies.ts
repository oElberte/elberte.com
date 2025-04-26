import type { SvelteComponent } from 'svelte';

// Import SVG icon components
import Aws from '$lib/icons/Aws.svelte';
import Code from '$lib/icons/Code.svelte';
import Css from '$lib/icons/Css.svelte';
import Docker from '$lib/icons/Docker.svelte';
import Drizzle from '$lib/icons/Drizzle.svelte';
import Firebase from '$lib/icons/Firebase.svelte';
import Firestore from '$lib/icons/Firestore.svelte';
import Flutter from '$lib/icons/Flutter.svelte';
import Gcp from '$lib/icons/Gcp.svelte';
import Git from '$lib/icons/Git.svelte';
import Golang from '$lib/icons/Golang.svelte';
import Html from '$lib/icons/Html.svelte';
import JavaScript from '$lib/icons/JavaScript.svelte';
import Mysql from '$lib/icons/Mysql.svelte';
import Neon from '$lib/icons/Neon.svelte';
import Nest from '$lib/icons/Nest.svelte';
import Node from '$lib/icons/Node.svelte';
import Postgresql from '$lib/icons/Postgresql.svelte';
import Prisma from '$lib/icons/Prisma.svelte';
import Svelte from '$lib/icons/Svelte.svelte';
import Tailwind from '$lib/icons/Tailwind.svelte';
import Tdd from '$lib/icons/Tdd.svelte';
import TypeScript from '$lib/icons/TypeScript.svelte';

/**
 * Technology category enum
 */
export enum TechCategory {
	FRONTEND = 'Frontend',
	BACKEND = 'Backend',
	DEVOPS = 'DevOps',
	TOOLS = 'Tools'
}

/**
 * Technology interface
 */
export interface Technology {
	id: string;
	name: string;
	icon: typeof SvelteComponent;
	category: TechCategory;
}

/**
 * All technologies
 */
/**
 * An object containing all the technologies, where each key is the technology ID and
 * each value is an object with the technology ID, name, icon, and category.
 *
 * This object is used to generate the technology icons in the homepage.
 */
export const TECHNOLOGIES = {
	// Frontend
	FLUTTER: {
		id: 'flutter',
		name: 'Flutter',
		icon: Flutter,
		category: TechCategory.FRONTEND
	},
	SVELTE: {
		id: 'svelte',
		name: 'SvelteKit',
		icon: Svelte,
		category: TechCategory.FRONTEND
	},
	TYPESCRIPT: {
		id: 'typescript',
		name: 'TypeScript',
		icon: TypeScript,
		category: TechCategory.FRONTEND
	},
	JAVASCRIPT: {
		id: 'javascript',
		name: 'JavaScript',
		icon: JavaScript,
		category: TechCategory.FRONTEND
	},
	TAILWINDCSS: {
		id: 'tailwindcss',
		name: 'TailwindCSS',
		icon: Tailwind,
		category: TechCategory.FRONTEND
	},
	HTML: {
		id: 'html',
		name: 'HTML',
		icon: Html,
		category: TechCategory.FRONTEND
	},
	CSS: {
		id: 'css',
		name: 'CSS',
		icon: Css,
		category: TechCategory.FRONTEND
	},

	// Backend
	NODEJS: {
		id: 'nodejs',
		name: 'Node.js',
		icon: Node,
		category: TechCategory.BACKEND
	},
	NESTJS: {
		id: 'nestjs',
		name: 'NestJS',
		icon: Nest,
		category: TechCategory.BACKEND
	},
	GOLANG: {
		id: 'golang',
		name: 'Golang',
		icon: Golang,
		category: TechCategory.BACKEND
	},
	POSTGRESQL: {
		id: 'postgresql',
		name: 'PostgreSQL',
		icon: Postgresql,
		category: TechCategory.BACKEND
	},
	MYSQL: {
		id: 'mysql',
		name: 'MySQL',
		icon: Mysql,
		category: TechCategory.BACKEND
	},
	PRISMA: {
		id: 'prisma',
		name: 'Prisma',
		icon: Prisma,
		category: TechCategory.BACKEND
	},
	DRIZZLE: {
		id: 'drizzle',
		name: 'Drizzle',
		icon: Drizzle,
		category: TechCategory.BACKEND
	},
	CLOUDFIRESTORE: {
		id: 'cloud_firestore',
		name: 'Cloud Firestore',
		icon: Firestore,
		category: TechCategory.BACKEND
	},

	// DevOps

	AWS: {
		id: 'aws',
		name: 'AWS',
		icon: Aws,
		category: TechCategory.DEVOPS
	},
	GCP: {
		id: 'gcp',
		name: 'GCP',
		icon: Gcp,
		category: TechCategory.DEVOPS
	},
	FIREBASE: {
		id: 'firebase',
		name: 'Firebase',
		icon: Firebase,
		category: TechCategory.DEVOPS
	},
	NEON: {
		id: 'neon',
		name: 'Neon',
		icon: Neon,
		category: TechCategory.DEVOPS
	},
	DOCKER: {
		id: 'docker',
		name: 'Docker',
		icon: Docker,
		category: TechCategory.DEVOPS
	},
	CICD: {
		id: 'cicd',
		name: 'CI/CD',
		icon: Code,
		category: TechCategory.DEVOPS
	},
	GIT: {
		id: 'git',
		name: 'Git',
		icon: Git,
		category: TechCategory.DEVOPS
	},
	TDD: {
		id: 'tdd',
		name: 'TDD',
		icon: Tdd,
		category: TechCategory.DEVOPS
	}

	// Tools
	// BACHELOR: {
	// 	id: 'bachelor',
	// 	name: "Bachelor's degree, Computer Science – Descomplica Faculdade Digital",
	// 	icon: Code,
	// 	category: TechCategory.TOOLS
	// },
	// POSTMAN: {
	// 	id: 'postman',
	// 	name: 'Postman',
	// 	icon: Code,
	// 	category: TechCategory.TOOLS
	// },
	// FIGMA: {
	// 	id: 'figma',
	// 	name: 'Figma',
	// 	icon: Code,
	// 	category: TechCategory.TOOLS
	// },
	// JEST: {
	// 	id: 'jest',
	// 	name: 'Jest',
	// 	icon: Code,
	// 	category: TechCategory.TOOLS
	// },
	// GITHUB: {
	// 	id: 'github',
	// 	name: 'GitHub',
	// 	icon: GitHub,
	// 	category: TechCategory.TOOLS
	// },
	// VERCEL: {
	// 	id: 'vercel',
	// 	name: 'Vercel',
	// 	icon: Code,
	// 	category: TechCategory.TOOLS
	// },
	// OPENAI: {
	// 	id: 'openai',
	// 	name: 'OpenAI',
	// 	icon: Code,
	// 	category: TechCategory.TOOLS
	// }
} as const;

/**
 * Technology type - all possible technology IDs
 */
export type TechnologyId = keyof typeof TECHNOLOGIES;

/**
 * Get technologies by category
 */
export function getTechnologiesByCategory(category: TechCategory) {
	return Object.values(TECHNOLOGIES).filter((tech) => tech.category === category);
}

/**
 * Get technology by ID
 */
export function getTechnology(id: TechnologyId) {
	return TECHNOLOGIES[id];
}
