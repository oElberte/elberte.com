<script lang="ts">
	import { techStack } from '$lib/data/tech-stack';
</script>

<section class="bg-purple-900 px-4 py-16 md:py-24">
	<div class="mx-auto max-w-7xl">
		<h2 class="mb-12 text-center text-3xl font-bold md:text-4xl">Tech Stack</h2>

		<div class="grid grid-cols-1 gap-8 md:grid-cols-3">
			{#each techStack as stack}
				<div
					class="glow-container rounded-lg border border-purple-600 bg-purple-900 p-6 shadow-lg transition-transform hover:scale-[1.02]"
				>
					<h3 class="mb-4 text-xl font-bold">{stack.category}</h3>
					<div class="flex flex-wrap gap-2">
						{#each stack.technologies as tech}
							<span class="flex items-center rounded-full bg-purple-800 px-3 py-1 text-sm">
								<svelte:component this={tech.icon} size={16} className="mr-1.5 text-purple-400" />
								{tech.name}
							</span>
						{/each}
					</div>
				</div>
			{/each}
		</div>
	</div>
</section>
