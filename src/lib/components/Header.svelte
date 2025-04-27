<script lang="ts">
	import Close from '$lib/icons/Close.svelte';
	import Menu from '$lib/icons/Menu.svelte';
	import { onMount } from 'svelte';
	import { slide } from 'svelte/transition';

	let mobileMenuOpen = $state(false);

	function toggleMobileMenu() {
		mobileMenuOpen = !mobileMenuOpen;
	}

	function closeMobileMenu() {
		mobileMenuOpen = false;
	}

	function handleClickOutside(event: MouseEvent) {
		if (mobileMenuOpen && event.target instanceof Element && event.target.closest('nav')) {
			mobileMenuOpen = false;
		}
	}

	onMount(() => {
		document.addEventListener('click', handleClickOutside);
		return () => {
			document.removeEventListener('click', handleClickOutside);
		};
	});
</script>

<header class="sticky top-0 z-50 border-b border-purple-700 px-4 py-4 backdrop-blur-xs md:px-6">
	<div class="mx-auto flex max-w-7xl items-center justify-between">
		<a href="/" class="text-xl font-bold">Elberte Plínio</a>

		<!-- Desktop Navigation -->
		<nav class="hidden items-center space-x-6 md:flex">
			<a href="#about" class="transition-colors hover:text-purple-300">About</a>
			<a href="#experience" class="transition-colors hover:text-purple-300">Experience</a>
			<!-- <a href="#projects" class="transition-colors hover:text-purple-300">Projects</a> -->
			<a href="#contact" class="transition-colors hover:text-purple-300">Contact</a>
			<a
				href="/elberte-plinio-cv.pdf"
				target="_blank"
				rel="noopener noreferrer"
				class="ml-4 rounded border border-purple-500 px-4 py-2 transition-colors hover:bg-purple-500 hover:text-white"
				>Resume</a
			>
		</nav>

		<!-- Mobile Menu Button -->
		<button class="text-white md:hidden" onclick={toggleMobileMenu} aria-label="Toggle menu">
			{#if mobileMenuOpen}
				<Close />
			{:else}
				<Menu />
			{/if}
		</button>
	</div>

	<!-- Mobile Navigation -->
	{#if mobileMenuOpen}
		<nav
			transition:slide
			class="absolute top-16 right-0 left-0 z-50 border-b border-purple-700 backdrop-blur-xs md:hidden"
		>
			<div class="flex flex-col space-y-4 p-4">
				<a href="#about" class="transition-colors hover:text-purple-300" onclick={closeMobileMenu}
					>About</a
				>
				<a
					href="#experience"
					class="transition-colors hover:text-purple-300"
					onclick={closeMobileMenu}>Experience</a
				>
				<!-- <a
					href="#projects"
					class="transition-colors hover:text-purple-300"
					onclick={closeMobileMenu}>Projects</a
				> -->
				<a href="#contact" class="transition-colors hover:text-purple-300" onclick={closeMobileMenu}
					>Contact</a
				>
				<a
					href="/resume.pdf"
					class="rounded border border-purple-500 px-4 py-2 text-center transition-colors hover:bg-purple-500 hover:text-white"
					>Resume</a
				>
			</div>
		</nav>
	{/if}
</header>
