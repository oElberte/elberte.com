<script lang="ts">
  // Props for customizing structured data
  let {
    type = "Person",
    name = "Elberte Plínio",
    jobTitle = "Software Engineer",
    url = "https://elberte.com",
    image = "/profile-image.jpg",
    description = "Software Engineer building digital experiences with modern technologies",
    sameAs = []
  } = $props();

  // Create the structured data object
  const structuredData = {
    "@context": "https://schema.org",
    "@type": type,
    name,
    jobTitle,
    url,
    image,
    description,
    sameAs
  };
</script>

<svelte:head>
  <script type="application/ld+json">
    {JSON.stringify(structuredData)}
  </script>
</svelte:head>
