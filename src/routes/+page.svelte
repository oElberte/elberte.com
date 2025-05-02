<script lang="ts">
	import Footer from '$lib/components/Footer.svelte';
	import Header from '$lib/components/Header.svelte';
	import SEO from '$lib/components/SEO.svelte';
	import StructuredData from '$lib/components/StructuredData.svelte';
	import Contact from '$lib/components/sections/Contact.svelte';
	import Education from '$lib/components/sections/Education.svelte';
	import Experience from '$lib/components/sections/Experience.svelte';
	import Hero from '$lib/components/sections/Hero.svelte';
	import Projects from '$lib/components/sections/Projects.svelte';
	import TechStack from '$lib/components/sections/TechStack.svelte';
	import { socialLinks } from '$lib/data/social-links';

	// Extract social media URLs for structured data
	const socialMediaUrls = socialLinks.map((link) => link.url);
</script>

<SEO
	title="Elberte Plínio | Software Engineer"
	description="Portfolio of Elberte Plínio, a skilled Software Engineer specializing in building modern web applications with cutting-edge technologies. Explore my work experience, projects, and technical skills."
	keywords="software engineer, web developer, frontend developer, backend developer, full stack developer, portfolio, Elberte Plínio"
	canonicalUrl="https://elberte.com"
	ogImage="/og-image.svg"
/>

<StructuredData
	name="Elberte Plínio"
	jobTitle="Software Engineer"
	url="https://elberte.com"
	image="/og-image.svg"
	description="Software Engineer building digital experiences with modern technologies"
	sameAs={socialMediaUrls}
/>

<div class="flex min-h-screen flex-col bg-purple-950 text-white">
	<Header />

	<main class="flex-grow">
		<Hero />
		<Experience />
		<Projects />
		<TechStack />
		<Education />
		<Contact />
	</main>

	<Footer />
</div>
