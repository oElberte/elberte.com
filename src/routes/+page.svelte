<script lang="ts">
	import Footer from '$lib/components/Footer.svelte';
	import Header from '$lib/components/Header.svelte';
	import Contact from '$lib/components/sections/Contact.svelte';
	import Education from '$lib/components/sections/Education.svelte';
	import Experience from '$lib/components/sections/Experience.svelte';
	import Hero from '$lib/components/sections/Hero.svelte';
	import Projects from '$lib/components/sections/Projects.svelte';
	import TechStack from '$lib/components/sections/TechStack.svelte';
</script>

<svelte:head>
	<title>Elberte Plínio | Software Engineer</title>
	<meta
		name="description"
		content="Portfolio of a Software Engineer building digital experiences with modern technologies"
	/>
</svelte:head>

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
