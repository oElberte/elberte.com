<script lang="ts">
	import { enhance } from '$app/forms';
	import { FormErrorsContext } from '$lib/actions/form-errors.svelte';
	import Input from '$lib/components/Input.svelte';
	import TextArea from '$lib/components/TextArea.svelte';
	import { SubmissionState } from '$lib/types/submission-state';
	import { contactFormSchema } from '$lib/validations/contact';
	import { setContext } from 'svelte';
	import { fade, fly } from 'svelte/transition';

	const formErrors = setContext(FormErrorsContext.key, new FormErrorsContext(contactFormSchema));

	let submissionState = $state(SubmissionState.NOT_SUBMITTED);

	const formHasErrors = $derived(Object.keys(formErrors.errors).length > 0);
	const isFormDisabled = $derived(
		formHasErrors || submissionState !== SubmissionState.NOT_SUBMITTED
	);
</script>

<section id="contact" class="bg-purple-950 px-4 py-20">
	<div class="mx-auto max-w-3xl">
		<h2 class="mb-16 text-center text-4xl font-bold">Get in Touch</h2>

		<div class="relative">
			<!-- Form submission overlay -->
			{#if submissionState !== SubmissionState.NOT_SUBMITTED}
				<div
					transition:fade={{ duration: 300 }}
					class="absolute inset-0 z-10 flex items-center justify-center rounded-lg bg-purple-950/50 backdrop-blur-sm"
				>
					{#if submissionState === SubmissionState.SUCCESS}
						<div in:fly={{ duration: 300, delay: 300 }} class="text-center">
							<div
								class="mb-4 inline-flex h-16 w-16 items-center justify-center rounded-full bg-green-500/20"
							>
								<svg
									xmlns="http://www.w3.org/2000/svg"
									class="h-8 w-8 text-green-400"
									fill="none"
									viewBox="0 0 24 24"
									stroke="currentColor"
								>
									<path
										stroke-linecap="round"
										stroke-linejoin="round"
										stroke-width="2"
										d="M5 13l4 4L19 7"
									/>
								</svg>
							</div>
							<h3 class="mb-2 text-2xl font-bold text-white">Message Sent!</h3>
							<p class="text-purple-200">Thank you for reaching out. I'll get back to you soon.</p>
							<button
								onclick={() => {
									submissionState = SubmissionState.NOT_SUBMITTED;
									(document.getElementById('contact-form') as HTMLFormElement)?.reset();
								}}
								class="z-10 mt-6 cursor-pointer rounded-md bg-purple-600 px-4 py-2 text-white hover:bg-purple-700"
							>
								Send Another Message
							</button>
						</div>
					{:else}
						<div in:fly={{ duration: 300, delay: 300 }} class="text-center">
							<div
								class="mb-4 inline-flex h-16 w-16 items-center justify-center rounded-full bg-red-500/20"
							>
								<svg
									xmlns="http://www.w3.org/2000/svg"
									class="h-8 w-8 text-red-400"
									fill="none"
									viewBox="0 0 24 24"
									stroke="currentColor"
								>
									<path
										stroke-linecap="round"
										stroke-linejoin="round"
										stroke-width="2"
										d="M6 18L18 6M6 6l12 12"
									/>
								</svg>
							</div>
							<h3 class="mb-2 text-2xl font-bold text-white">Something Went Wrong</h3>
							<p class="text-purple-200">Your message couldn't be sent. Please try again.</p>
							<button
								onclick={() => (submissionState = SubmissionState.NOT_SUBMITTED)}
								class="z-10 mt-6 cursor-pointer rounded-md bg-purple-600 px-4 py-2 text-white hover:bg-purple-700"
							>
								Try Again
							</button>
						</div>
					{/if}
				</div>
			{/if}

			<form
				id="contact-form"
				method="post"
				class="glow-container rounded-lg border border-purple-600 bg-purple-900 p-8 shadow-lg"
				use:formErrors.action
				use:enhance={() => {
					return async ({ result }) => {
						if (result.type === 'success') {
							submissionState = SubmissionState.SUCCESS;
						} else if (result.status !== 400) {
							submissionState = SubmissionState.ERROR;
						}
					};
				}}
				class:opacity-70={submissionState !== SubmissionState.NOT_SUBMITTED}
				class:pointer-events-none={submissionState !== SubmissionState.NOT_SUBMITTED}
			>
				<Input id="name" name="name" type="text" label="Name" required />

				<Input id="email" name="email" type="email" label="Email" required />

				<TextArea id="message" name="message" label="Message" rows={5} required />

				<button
					type="submit"
					class="w-full rounded bg-purple-500 py-3 font-medium text-white transition-all"
					disabled={isFormDisabled}
					class:opacity-50={isFormDisabled}
					class:cursor-not-allowed={isFormDisabled}
					class:hover:bg-purple-600={!isFormDisabled}
					class:cursor-pointer={!isFormDisabled}
					class:hover:scale-[1.02]={!isFormDisabled}
				>
					Send Message
				</button>
			</form>
		</div>
	</div>
</section>
