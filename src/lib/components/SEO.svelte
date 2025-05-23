<script lang="ts">
	// Props for customizing SEO metadata
	let {
		title = 'Elberte Plínio | Software Engineer',
		description = 'Portfolio of Elberte Plínio, a Software Engineer building digital experiences with modern technologies',
		keywords = 'software engineer, web developer, frontend developer, backend developer, full stack developer, portfolio',
		ogImage = '/og-image.svg',
		ogType = 'website',
		twitterCard = 'summary_large_image',
		canonicalUrl = 'https://elberte.com',
		locale = 'en_US'
	} = $props();

	// Construct the full title with site name
	const fullTitle = title.includes('Elberte Plínio') ? title : `${title} | Elberte Plínio`;
</script>

<svelte:head>
	<!-- Primary Meta Tags -->
	<title>{fullTitle}</title>
	<meta name="title" content={fullTitle} />
	<meta name="description" content={description} />
	<meta name="keywords" content={keywords} />
	<meta name="author" content="Elberte Plínio" />
	<link rel="canonical" href={canonicalUrl} />

	<!-- Open Graph / Facebook -->
	<meta property="og:type" content={ogType} />
	<meta property="og:url" content={canonicalUrl} />
	<meta property="og:title" content={fullTitle} />
	<meta property="og:description" content={description} />
	<meta property="og:image" content={ogImage} />
	<meta property="og:image:alt" content={`${fullTitle} - Portfolio Preview`} />
	<meta property="og:site_name" content="Elberte Plínio" />
	<meta property="og:locale" content={locale} />

	<!-- Twitter -->
	<meta property="twitter:card" content={twitterCard} />
	<meta property="twitter:url" content={canonicalUrl} />
	<meta property="twitter:title" content={fullTitle} />
	<meta property="twitter:description" content={description} />
	<meta property="twitter:image" content={ogImage} />
	<meta property="twitter:image:alt" content={`${fullTitle} - Portfolio Preview`} />

	<!-- Additional Meta Tags -->
	<meta name="robots" content="index, follow" />
	<meta name="language" content="English" />
	<meta name="revisit-after" content="7 days" />
	<meta name="theme-color" content="#4C1D95" />
	<meta name="application-name" content="Elberte Plínio Portfolio" />
	<meta name="mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
	<meta name="apple-mobile-web-app-title" content="Elberte Plínio" />
	<meta name="format-detection" content="telephone=no" />
	<meta name="msapplication-TileColor" content="#4C1D95" />
</svelte:head>
