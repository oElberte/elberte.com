<script lang="ts">
	import { projects } from '$lib/data/projects';
	import { TECHNOLOGIES } from '$lib/types/technologies';
</script>

<section id="projects" class="bg-purple-900 px-4 py-16 md:py-24">
	<div class="mx-auto max-w-7xl">
		<h2 class="mb-12 text-center text-3xl font-bold md:text-4xl">GitHub Projects</h2>
		<div class="grid gap-8 md:grid-cols-2 lg:grid-cols-3">
			{#each projects as project}
				<div
					class="glow-container flex flex-col overflow-hidden rounded-lg border border-purple-700 bg-purple-900 shadow-lg transition-transform hover:scale-[1.02]"
				>
					{#if project.image}
						<img
							src={project.image}
							alt={project.title}
							class="h-48 w-full object-cover object-center"
						/>
					{/if}
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
							{#if project.url}
								<a
									href={project.url}
									class="inline-block rounded bg-purple-600 px-4 py-2 text-sm font-medium transition-colors hover:bg-purple-500"
									>View Project</a
								>
							{/if}
						</div>
					</div>
				</div>
			{/each}
		</div>
	</div>
</section>
