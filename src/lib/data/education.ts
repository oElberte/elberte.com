import awsImage from '$lib/images/aws-certified-cloud-practitioner.png';
import descomplicaImage from '$lib/images/descomplica.png';

export interface Education {
	name: string;
	institution: string;
	image?: string;
	href?: string;
	startDate?: string;
	endDate?: string;
}

export const educations: Education[] = [
	{
		name: 'Bachelor of Computer Science',
		institution: 'Descomplica Faculdade Digital',
		image: descomplicaImage,
		startDate: 'Jan - 2025',
		endDate: 'Dec - 2028'
	},
	{
		name: 'AWS Certified Cloud Practitioner',
		institution: 'Amazon Web Services',
		href: 'https://www.credly.com/badges/1f22ad36-94f9-46fa-84ed-fd98a43b91fb/',
		image: awsImage,
		startDate: 'Mar - 2025',
		endDate: 'Mar - 2028'
	}
];
