import type { TECHNOLOGIES } from '$lib/types/technologies';

export interface Project {
  title: string;
  description: string;
  technologies: Array<keyof typeof TECHNOLOGIES>;
  image: string;
  url?: string;
}

export const projects: Project[] = [
  {
    title: 'E-commerce Platform',
    description: 'A full-stack e-commerce platform built with Next.js, Prisma, and Stripe integration.',
    technologies: [],
    image: ''
  },
  {
    title: 'Task Management App',
    description: 'A real-time task management application with team collaboration features.',
    technologies: [],
    image: ''
  },
  {
    title: 'AI Chat Interface',
    description: 'An AI-powered chat interface with natural language processing capabilities.',
    technologies: [],
    image: ''
  }
];
