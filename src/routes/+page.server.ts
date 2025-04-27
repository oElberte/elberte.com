import { RESEND_API_KEY, RESEND_EMAIL_ADDRESS } from '$env/static/private';
import { contactFormSchema } from '$lib/validations/contact';
import { fail } from '@sveltejs/kit';
import { Resend } from 'resend';

const resend = new Resend(RESEND_API_KEY);

export const actions = {
	default: async ({ request }) => {
		const formData = await request.formData();

		const name = formData.get('name')?.toString() || '';
		const email = formData.get('email')?.toString() || '';
		const message = formData.get('message')?.toString() || '';

		const formResult = contactFormSchema.safeParse({ name, email, message });

		if (!formResult.success) {
			const errorMessage = formResult.error.errors[0]?.message || 'Invalid form data';
			return fail(400, {
				error: errorMessage,
				name,
				email,
				message
			});
		}

		try {
			const { error } = await resend.emails.send({
				from: 'Contact Form <dev@elberte.com>',
				to: [RESEND_EMAIL_ADDRESS],
				subject: `New Contact Form Submission from ${name}`,
				replyTo: email,

				html: `
					<p>You received a new message from your portfolio contact form:</p>
               		<p><strong>Name:</strong> ${name}</p>
              		<p><strong>Email:</strong> ${email}</p>
              		<p><strong>Message:</strong></p>
               		<p>${message}</p>
				`
			});

			if (error) {
				console.error('Resend Error:', error);
				return fail(500, {
					error: 'Failed to send message. Please try again later.',
					name,
					email,
					message
				});
			}

			return { success: true };
		} catch (err) {
			console.error('Server Error:', err);
			return fail(500, { error: 'An unexpected server error occurred.', name, email, message });
		}
	}
};
