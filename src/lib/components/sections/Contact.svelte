<script lang="ts">
	import { enhance } from '$app/forms';
	import { FormErrorsContext } from '$lib/actions/form-errors.svelte';
	import Input from '$lib/components/Input.svelte';
	import TextArea from '$lib/components/TextArea.svelte';
	import { contactFormSchema } from '$lib/validations/contact';
	import { setContext } from 'svelte';

	const formErrors = setContext(FormErrorsContext.key, new FormErrorsContext(contactFormSchema));
	const formHasErrors = $derived(Object.keys(formErrors.errors).length > 0);
</script>

<section id="contact" class="bg-purple-950 px-4 py-20">
	<div class="mx-auto max-w-3xl">
		<h2 class="mb-16 text-center text-4xl font-bold">Get in Touch</h2>

		<form
			method="post"
			class="glow-container rounded-lg border border-purple-600 bg-purple-900 p-8 shadow-lg"
			use:formErrors.action
			use:enhance
		>
			<Input id="name" name="name" type="text" label="Name" required />

			<Input id="email" name="email" type="email" label="Email" required />

			<TextArea id="message" name="message" label="Message" rows={5} required />

			<button
				type="submit"
				class="w-full rounded bg-purple-500 py-3 font-medium text-white transition-all hover:scale-[1.02]"
				disabled={formHasErrors}
				class:opacity-50={formHasErrors}
				class:cursor-not-allowed={formHasErrors}
				class:hover:bg-purple-600={!formHasErrors}
				class:cursor-pointer={!formHasErrors}
			>
				Send Message
			</button>
		</form>
	</div>
</section>
