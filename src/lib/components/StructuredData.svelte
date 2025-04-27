<script lang="ts">
	// Props for customizing structured data
	let {
		type = 'Person',
		name = 'Elberte Plínio',
		jobTitle = 'Software Engineer',
		url = 'https://www.elberte.com',
		image = '/og-image.svg',
		description = 'Software Engineer building digital experiences with modern technologies',
		sameAs = [],
		skills = ['JavaScript', 'TypeScript', 'React', 'Node.js', 'Svelte', 'Web Development'],
		email = 'elberte.dev@gmail.com',
		location = {
			'@type': 'Place',
			address: {
				'@type': 'PostalAddress',
				addressCountry: 'Brazil'
			}
		}
	} = $props();

	// Create the person structured data object
	const personData = {
		'@context': 'https://schema.org',
		'@type': type,
		name,
		jobTitle,
		url,
		image,
		description,
		sameAs,
		email,
		knowsAbout: skills,
		workLocation: location
	};

	// Create the website structured data object
	const websiteData = {
		'@context': 'https://schema.org',
		'@type': 'WebSite',
		name: 'Elberte Plínio Portfolio',
		url,
		description: 'Personal portfolio website of Elberte Plínio, Software Engineer',
		author: {
			'@type': 'Person',
			name
		},
		inLanguage: 'en-US'
	};
</script>

<svelte:head>
	<script type="application/ld+json">
    {JSON.stringify(personData)}
	</script>
	<script type="application/ld+json">
    {JSON.stringify(websiteData)}
	</script>
</svelte:head>
