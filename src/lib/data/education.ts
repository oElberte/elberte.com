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
    image: '/descomplica.png',
    startDate: 'Jan - 2025',
    endDate: 'Dec - 2028'
  },
  {
    name: 'AWS Certified Cloud Practitioner',
    institution: 'Amazon Web Services',
    href: 'https://www.credly.com/badges/1f22ad36-94f9-46fa-84ed-fd98a43b91fb/',
    image: '/aws-certified-cloud-practitioner.png',
    startDate: 'Mar - 2025',
    endDate: 'Mar - 2028'
  }
];
