import barbershopImage from '$lib/images/github/barbershop.png';
import cuidapetImage from '$lib/images/github/cuidapet.png';
import deliveryImage from '$lib/images/github/delivery.png';
import pokedexImage from '$lib/images/github/pokedex.webp';
import type { TECHNOLOGIES } from '$lib/types/technologies';

export interface Project {
	title: string;
	description: string;
	technologies: Array<keyof typeof TECHNOLOGIES>;
	image: string;
	href?: string;
}

export const projects: Project[] = [
	{
		title: 'Cuidapet',
		description:
			'A modern pet care services application built with Flutter using Modular Architecture with MobX for state management.',
		technologies: ['FLUTTER', 'FIREBASE', 'GCP', 'MYSQL'],
		image: cuidapetImage,
		href: 'https://github.com/oElberte/cuidapet'
	},
	{
		title: 'Barbershop App',
		description:
			'A modern barbershop management application built with Flutter using Riverpod for state management.',
		technologies: ['FLUTTER'],
		image: barbershopImage,
		href: 'https://github.com/oElberte/barbershop-app'
	},
	{
		title: 'Delivery App',
		description:
			'A modern food delivery application built with Flutter using Clean Architecture with BLoC Pattern.',
		technologies: ['FLUTTER'],
		image: deliveryImage,
		href: 'https://github.com/oElberte/delivery-app'
	},
	{
		title: 'Clean Pokédex',
		description:
			'A rebuilt of my first Flutter application using Clean Architecture and Test-Driven Development principles. To learn with nostalgia.',
		technologies: ['FLUTTER', 'CICD', 'TDD'],
		image: pokedexImage,
		href: 'https://github.com/oElberte/pokedex-clean-architecture'
	}
];
