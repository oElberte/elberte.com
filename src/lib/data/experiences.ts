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
    description: 'A music streaming platform built with Flutter and Firebase.',
    technologies: ['FLUTTER', 'FIREBASE', 'CLOUDFIRESTORE', 'GOLANG', 'GCP', 'DOCKER', 'CICD']
  },
  {
    title: 'Software Engineer / Tech Lead',
    company: 'GAV Resorts - Project',
    image: '/gavresorts.png',
    description: 'A music streaming platform built with Flutter and Firebase.',
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
    description: 'A music streaming platform built with Flutter and Firebase.',
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
