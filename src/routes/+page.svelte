<script lang="ts">
	// Import SVG icon components
	import Email from '$lib/icons/Email.svelte';
	import GitHub from '$lib/icons/GitHub.svelte';
	import Heart from '$lib/icons/Heart.svelte';
	import LinkedIn from '$lib/icons/LinkedIn.svelte';
	import WhatsApp from '$lib/icons/WhatsApp.svelte';
	// Import technologies
	import Header from '$lib/components/Header.svelte';
	import { TECHNOLOGIES, TechCategory, getTechnologiesByCategory } from '$lib/types/technologies';

	// Social media links
	const socialLinks = [
		{
			name: 'GitHub',
			url: 'https://github.com/oElberte',
			ariaLabel: 'GitHub Profile',
			icon: GitHub
		},
		{
			name: 'LinkedIn',
			url: 'https://linkedin.com/in/oElberte/',
			ariaLabel: 'LinkedIn Profile',
			icon: LinkedIn
		},
		{
			name: 'WhatsApp',
			url: 'https://wa.me/5534991355629',
			ariaLabel: 'WhatsApp Contact',
			icon: WhatsApp
		},
		{
			name: 'Email',
			url: 'mailto:elberte.dev@gmail.com',
			ariaLabel: 'Email Contact',
			icon: Email
		}
	];

	interface Project {
		title: string;
		description: string;
		technologies: Array<keyof typeof TECHNOLOGIES>;
		image: string;
	}

	// Projects data
	const projects: Project[] = [
		{
			title: 'E-commerce Platform',
			description:
				'A full-stack e-commerce platform built with Next.js, Prisma, and Stripe integration.',
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

	interface Experience {
		title: string;
		company: string;
		image: string;
		href?: string;
		description: string;
		technologies: Array<keyof typeof TECHNOLOGIES>;
	}

	const experiences: Experience[] = [
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

	// Tech stack data with icons using the new technology system
	const techStack = [
		{
			category: TechCategory.FRONTEND,
			technologies: getTechnologiesByCategory(TechCategory.FRONTEND)
		},
		{
			category: TechCategory.BACKEND,
			technologies: getTechnologiesByCategory(TechCategory.BACKEND)
		},
		{
			category: TechCategory.DEVOPS,
			technologies: getTechnologiesByCategory(TechCategory.DEVOPS)
		}
		// {
		// 	category: TechCategory.TOOLS,
		// 	technologies: getTechnologiesByCategory(TechCategory.TOOLS)
		// }
	];

	const educations = [
		{
			name: 'Bachelor of Computer Science',
			institution: 'Descomplica Faculdade Digital',
			image: '/descomplica.png',
			startDate: 'Jan - 2025',
			endDate: 'Dec - 2028'
		},
		{
			name: 'AWS Certified Cloud Practitioner',
			institution: 'Amazon Web Services',
			href: 'https://www.credly.com/badges/1f22ad36-94f9-46fa-84ed-fd98a43b91fb/',
			image: '/aws-certified-cloud-practitioner.png',
			startDate: 'Mar - 2025',
			endDate: 'Mar - 2028'
		}
	];

	// Form data
	let name = '';
	let email = '';
	let message = '';

	// Handle form submission
	function handleSubmit() {
		console.log({ name, email, message });
		// Reset form
		name = '';
		email = '';
		message = '';
		alert('Message sent successfully!');
	}
</script>

<svelte:head>
	<title>Elberte Plínio | Software Engineer</title>
	<meta
		name="description"
		content="Portfolio of a Software Engineer building digital experiences with modern technologies"
	/>
	<link
		rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	/>
</svelte:head>

<div class="flex min-h-screen flex-col bg-purple-950 text-white">
	<!-- Header/Navigation -->
	<Header />

	<main class="flex-grow">
		<!-- Hero Section -->
		<section id="about" class="px-4 py-20 text-center md:py-32">
			<div class="mx-auto max-w-3xl">
				<h1 class="mb-6 text-4xl font-bold md:text-6xl">Software Engineer</h1>
				<p class="mx-auto mb-10 max-w-2xl text-lg text-purple-300 md:text-xl">
					Crafting digital experiences using cutting-edge technologies. Dedicated to designing sleek
					solutions for intricate challenges.
				</p>

				<!-- Social Links -->
				<div class="flex justify-center space-x-6">
					{#each socialLinks as link}
						<a
							href={link.url}
							target="_blank"
							rel="noopener noreferrer"
							aria-label={link.ariaLabel}
							class="glow-container flex h-full flex-col overflow-hidden rounded-lg border border-purple-600 bg-purple-800 p-3 transition-transform hover:scale-110 hover:bg-purple-700"
						>
							<svelte:component this={link.icon} />
						</a>
					{/each}
				</div>
			</div>
		</section>

		<!-- Experience Section -->
		<!-- TODO: Add experiences (to the top menu as well) -->
		<section id="experience" class="px-4 py-16 md:py-24">
			<div class="mx-auto max-w-7xl">
				<h2 class="mb-12 text-center text-3xl font-bold md:text-4xl">Experience</h2>

				<div class="grid grid-cols-1 gap-8 md:grid-cols-2 lg:grid-cols-3">
					<!-- md:grid-cols-2"> -->
					{#each experiences as experience}
						<div class="flex flex-col">
							<a
								href={experience.href}
								target="_blank"
								rel="noopener noreferrer"
								class="glow-container overflow-hidden rounded-lg border border-purple-600 bg-purple-900 p-6"
							>
								<img
									src={experience.image}
									alt={experience.company}
									class="absolute -top-[11%] -right-[9%] h-[125%] flex-shrink-0 overflow-clip object-contain opacity-10"
								/>
								<div class="relative z-10">
									<h3 class="mb-4 text-xl font-bold">{experience.title}</h3>
									<p class="mb-4 text-purple-300">{experience.company}</p>
									<div class="flex flex-wrap gap-2">
										{#each experience.technologies as tech}
											<span class="rounded bg-purple-800 px-2 py-1 text-xs"
												>{TECHNOLOGIES[tech].name}</span
											>
										{/each}
									</div>
								</div>
							</a>
							<p class="mt-2 text-purple-300">{experience.description}</p>
						</div>
					{/each}
				</div>
			</div>
		</section>

		<!-- Projects Section -->
		<section id="projects" class="bg-purple-900 px-4 py-16 md:py-24">
			<div class="mx-auto max-w-7xl">
				<h2 class="mb-12 text-center text-3xl font-bold md:text-4xl">GitHub Projects</h2>
				<div class="grid gap-8 md:grid-cols-2 lg:grid-cols-3">
					{#each projects as project}
						<div
							class="flex flex-col overflow-hidden rounded-lg border border-purple-700 bg-purple-900 shadow-lg transition-transform hover:scale-[1.02]"
						>
							<img
								src={project.image}
								alt={project.title}
								class="h-48 w-full object-cover object-center"
							/>
							<div class="flex flex-grow flex-col p-6">
								<h3 class="mb-2 text-xl font-semibold">{project.title}</h3>
								<p class="mb-4 flex-grow text-purple-300">{project.description}</p>
								<div class="mt-auto">
									<div class="mb-4 flex flex-wrap gap-2">
										{#each project.technologies as tech}
											<span class="rounded bg-purple-800 px-2 py-1 text-xs"
												>{TECHNOLOGIES[tech].name}</span
											>
										{/each}
									</div>
									<a
										href="/"
										class="inline-block rounded bg-purple-600 px-4 py-2 text-sm font-medium transition-colors hover:bg-purple-500"
										>View Project</a
									>
								</div>
							</div>
						</div>
					{/each}
				</div>
			</div>
		</section>

		<!-- Tech Stack Section -->
		<section class="bg-purple-950 px-4 py-16 md:py-24">
			<div class="mx-auto max-w-7xl">
				<h2 class="mb-12 text-center text-3xl font-bold md:text-4xl">Tech Stack</h2>

				<div class="grid grid-cols-1 gap-8 md:grid-cols-3">
					<!-- md:grid-cols-2"> -->
					{#each techStack as stack}
						<div class="glow-container rounded-lg border border-purple-600 bg-purple-900 p-6">
							<h3 class="mb-4 text-xl font-bold">{stack.category}</h3>
							<div class="flex flex-wrap gap-2">
								{#each stack.technologies as tech}
									<span class="flex items-center rounded-full bg-purple-800 px-3 py-1 text-sm">
										<svelte:component
											this={tech.icon}
											size={16}
											className="mr-1.5 text-purple-400"
										/>
										{tech.name}
									</span>
								{/each}
							</div>
						</div>
					{/each}
				</div>
			</div>
		</section>

		<!-- Education Section -->
		<section class="bg-purple-900 px-4 py-16 md:py-24">
			<div class="mx-auto max-w-7xl">
				<h2 class="mb-12 text-center text-3xl font-bold md:text-4xl">Education</h2>

				<div class="grid grid-cols-1 gap-8 md:grid-cols-3">
					<!-- md:grid-cols-2"> -->
					{#each educations as education}
						<a
							href={education.href}
							target="_blank"
							rel="noopener noreferrer"
							class="glow-container overflow-hidden rounded-lg border border-purple-600 bg-purple-900 p-6"
						>
							{#if education.image}
								<img
									src={education.image}
									alt={education.name}
									class="absolute -top-[25%] -right-[12%] h-[150%] flex-shrink-0 overflow-clip object-contain opacity-10"
								/>
							{/if}
							<div class="relative z-10">
								<h3 class="mb-4 text-xl font-bold">{education.name}</h3>
								<p class="mb-4 text-purple-300">{education.institution}</p>
								<div class="flex flex-wrap gap-2">
									{#if education.startDate && education.endDate}
										<span class="text-purple-300">{education.startDate} • {education.endDate}</span>
									{/if}
								</div>
							</div>
						</a>
					{/each}
				</div>
			</div>
		</section>

		<!-- Contact Section -->
		<section id="contact" class="bg-purple-950 px-4 py-20">
			<div class="mx-auto max-w-3xl">
				<h2 class="mb-16 text-center text-4xl font-bold">Get in Touch</h2>

				<form
					on:submit|preventDefault={handleSubmit}
					class="glow-container rounded-lg border border-purple-600 bg-purple-900 p-8"
				>
					<div class="mb-6">
						<label for="name" class="mb-2 block">Name</label>
						<input
							type="text"
							id="name"
							bind:value={name}
							required
							class="w-full rounded border border-purple-700 bg-purple-950 p-3 focus:border-purple-400 focus:outline-none"
						/>
					</div>

					<div class="mb-6">
						<label for="email" class="mb-2 block">Email</label>
						<input
							type="email"
							id="email"
							bind:value={email}
							required
							class="w-full rounded border border-purple-700 bg-purple-950 p-3 focus:border-purple-400 focus:outline-none"
						/>
					</div>

					<div class="mb-6">
						<label for="message" class="mb-2 block">Message</label>
						<textarea
							id="message"
							bind:value={message}
							required
							rows="5"
							class="w-full resize-none rounded border border-purple-700 bg-purple-950 p-3 focus:border-purple-400 focus:outline-none"
						></textarea>
					</div>

					<button
						type="submit"
						class="w-full cursor-pointer rounded bg-purple-500 py-3 font-medium text-white transition-colors hover:bg-purple-600"
					>
						Send Message
					</button>
				</form>
			</div>
		</section>
	</main>

	<!-- Footer -->
	<footer class="border-t border-purple-700 px-4 py-6">
		<div class="mx-auto flex max-w-7xl flex-col items-center justify-center md:flex-row">
			<p class="mb-4 text-sm text-purple-400 md:mb-0">
				&copy; {new Date().getFullYear()} - Made with <svelte:component
					this={Heart}
					size={14}
					color="#ef4444"
					className="inline-block"
				/> by Elberte Plínio.
			</p>
			<!-- <div class="flex space-x-6">
				<a href="/terms" class="text-sm text-purple-400 transition-colors hover:text-white"
					>Terms of Service</a
				>
				<a href="/privacy" class="text-sm text-purple-400 transition-colors hover:text-white"
					>Privacy</a
				>
			</div> -->
		</div>
	</footer>
</div>
