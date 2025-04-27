<script lang="ts">
	import { educations } from '$lib/data/education';
</script>

<section id="education" class="bg-purple-950 px-4 py-16 md:py-24" aria-labelledby="education-heading">
	<div class="mx-auto max-w-7xl">
		<h2 id="education-heading" class="mb-12 text-center text-3xl font-bold md:text-4xl">Education</h2>

		<div class="grid grid-cols-1 gap-8 md:grid-cols-3">
			{#each educations as education}
				<article 
					class="glow-container overflow-hidden rounded-lg border border-purple-600 bg-purple-900 p-6 shadow-lg transition-transform hover:scale-[1.02]"
					itemscope 
					itemtype="https://schema.org/EducationalOccupationalCredential"
				>
					<a
						href={education.href}
						target="_blank"
						rel="noopener noreferrer"
						class="block h-full w-full"
					>
						{#if education.image}
							<img
								src={education.image}
								alt={`${education.name} at ${education.institution}`}
								class="absolute -top-[25%] -right-[12%] h-[150%] flex-shrink-0 overflow-clip object-contain opacity-10"
								loading="lazy"
								itemprop="image"
							/>
						{/if}
						<div class="relative z-10">
							<h3 class="mb-4 text-xl font-bold" itemprop="credentialCategory">{education.name}</h3>
							<p class="mb-4 text-purple-300" itemprop="recognizedBy" itemscope itemtype="https://schema.org/Organization">
								<span itemprop="name">{education.institution}</span>
							</p>
							<div class="flex flex-wrap gap-2">
								{#if education.startDate && education.endDate}
									<span class="text-purple-300">
										<time itemprop="validFrom" datetime={education.startDate}>{education.startDate}</time> • 
										<time itemprop="validUntil" datetime={education.endDate}>{education.endDate}</time>
									</span>
								{/if}
							</div>
						</div>
					</a>
				</article>
			{/each}
		</div>
	</div>
</section>
