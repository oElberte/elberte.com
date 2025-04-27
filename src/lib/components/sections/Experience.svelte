<script lang="ts">
	import { experiences } from '$lib/data/experiences';
	import { TECHNOLOGIES } from '$lib/types/technologies';
</script>

<section id="experience" class="px-4 py-16 md:py-24" aria-labelledby="experience-heading">
	<div class="mx-auto max-w-7xl">
		<h2 id="experience-heading" class="mb-12 text-center text-3xl font-bold md:text-4xl">Experience</h2>

		<div class="grid grid-cols-1 gap-8 md:grid-cols-2 lg:grid-cols-3">
			{#each experiences as experience}
				<article class="flex flex-col" itemscope itemtype="https://schema.org/WorkPosition">
					<a
						href={experience.href}
						target="_blank"
						rel="noopener noreferrer"
						class="glow-container overflow-hidden rounded-lg border border-purple-600 bg-purple-900 p-6 shadow-lg transition-transform hover:scale-[1.02]"
					>
						<img
							src={experience.image}
							alt={`${experience.company} logo`}
							class="absolute -top-[11%] -right-[9%] h-[125%] flex-shrink-0 overflow-clip object-contain opacity-10"
							loading="lazy"
							itemprop="image"
						/>
						<div class="relative z-10">
							<h3 class="mb-4 text-xl font-bold" itemprop="jobTitle">{experience.title}</h3>
							<p class="mb-4 text-purple-300" itemprop="hiringOrganization" itemscope itemtype="https://schema.org/Organization">
								<span itemprop="name">{experience.company}</span>
							</p>
							<div class="flex flex-wrap gap-2" itemprop="skills">
								{#each experience.technologies as tech}
									<span class="rounded bg-purple-800 px-2 py-1 text-xs"
										>{TECHNOLOGIES[tech].name}</span
									>
								{/each}
							</div>
						</div>
					</a>
					<p class="mt-2 text-justify text-purple-300" itemprop="description">{experience.description}</p>
				</article>
			{/each}
		</div>
	</div>
</section>
