import Email from '$lib/icons/Email.svelte';
import GitHub from '$lib/icons/GitHub.svelte';
import LinkedIn from '$lib/icons/LinkedIn.svelte';
import WhatsApp from '$lib/icons/WhatsApp.svelte';
import type { Component } from 'svelte';

export interface SocialLink {
	name: string;
	url: string;
	ariaLabel: string;
	icon: Component;
}

export const socialLinks: SocialLink[] = [
	{
		name: 'GitHub',
		url: 'https://github.com/oElberte',
		ariaLabel: 'GitHub Profile',
		icon: GitHub
	},
	{
		name: 'LinkedIn',
		url: 'https://linkedin.com/in/oElberte/',
		ariaLabel: 'LinkedIn Profile',
		icon: LinkedIn
	},
	{
		name: 'WhatsApp',
		url: 'https://wa.me/5534991355629',
		ariaLabel: 'WhatsApp Contact',
		icon: WhatsApp
	},
	{
		name: 'Email',
		url: 'mailto:elberte.dev@gmail.com',
		ariaLabel: 'Email Contact',
		icon: Email
	}
];
