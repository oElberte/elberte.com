import { z } from 'zod';

export const contactFormSchema = z.object({
	name: z
		.string()
		.min(3, { message: 'Name must be at least 3 characters long' })
		.trim()
		.nonempty({ message: 'Name is required' }),

	email: z
		.string()
		.email({ message: 'Please provide a valid email address' })
		.trim()
		.nonempty({ message: 'Email is required' }),

	message: z
		.string()
		.trim()
		.nonempty({ message: 'Message is required' })
		.min(10, { message: 'Message must be at least 10 characters long' })
		.max(500, { message: 'Message must be at most 500 characters long' })
});

export type ContactFormData = z.infer<typeof contactFormSchema>;
