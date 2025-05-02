<script lang="ts">
	import { techStack } from '$lib/data/tech-stack';
</script>

<section
	id="tech-stack"
	class="bg-purple-950 px-4 py-16 md:py-24"
	aria-labelledby="tech-stack-heading"
>
	<div class="mx-auto max-w-7xl">
		<h2 id="tech-stack-heading" class="mb-12 text-center text-3xl font-bold md:text-4xl">
			Tech Stack
		</h2>

		<div class="grid grid-cols-1 gap-8 md:grid-cols-3">
			{#each techStack as stack}
				<div
					class="glow-container rounded-lg border border-purple-600 bg-purple-900 p-6 shadow-lg transition-transform hover:scale-[1.02]"
					itemscope
					itemtype="https://schema.org/ItemList"
				>
					<meta itemprop="itemListOrder" content="Unordered" />
					<meta itemprop="numberOfItems" content={stack.technologies.length.toString()} />
					<h3 class="mb-4 text-xl font-bold" itemprop="name">{stack.category}</h3>
					<div class="flex flex-wrap gap-2">
						{#each stack.technologies as tech, index}
							<span
								class="flex items-center rounded-full bg-purple-800 px-3 py-1 text-sm"
								itemprop="itemListElement"
								itemscope
								itemtype="https://schema.org/ListItem"
							>
								<meta itemprop="position" content={`${index + 1}`} />
								<svelte:component this={tech.icon} size={16} className="mr-1.5 text-purple-400" />
								<span itemprop="name">{tech.name}</span>
							</span>
						{/each}
					</div>
				</div>
			{/each}
		</div>
	</div>
</section>
