<script lang="ts">
	import { educations } from '$lib/data/education';
</script>

<section class="bg-purple-900 px-4 py-16 md:py-24">
	<div class="mx-auto max-w-7xl">
		<h2 class="mb-12 text-center text-3xl font-bold md:text-4xl">Education</h2>

		<div class="grid grid-cols-1 gap-8 md:grid-cols-3">
			{#each educations as education}
				<a
					href={education.href}
					target="_blank"
					rel="noopener noreferrer"
					class="glow-container overflow-hidden rounded-lg border border-purple-600 bg-purple-900 p-6 shadow-lg transition-transform hover:scale-[1.02]"
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
