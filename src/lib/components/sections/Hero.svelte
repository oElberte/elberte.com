<script lang="ts">
  import { socialLinks } from '$lib/data/social-links';
</script>

<section id="about" class="px-4 py-20 text-center md:py-32" aria-labelledby="about-heading">
  <div class="mx-auto max-w-3xl">
    <h1 id="about-heading" class="mb-6 text-4xl font-bold md:text-6xl">
      <span class="sr-only">Elberte Plínio - </span>Software Engineer
    </h1>
    <p class="mx-auto mb-10 max-w-2xl text-lg text-purple-300 md:text-xl" itemprop="description">
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
          itemprop="sameAs"
        >
          <svelte:component this={link.icon} />
        </a>
      {/each}
    </div>
  </div>
</section>
