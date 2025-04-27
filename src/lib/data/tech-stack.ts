import { TechCategory, getTechnologiesByCategory } from '$lib/types/technologies';

export interface TechStack {
  category: TechCategory;
  technologies: ReturnType<typeof getTechnologiesByCategory>;
}

export const techStack: TechStack[] = [
  {
    category: TechCategory.FRONTEND,
    technologies: getTechnologiesByCategory(TechCategory.FRONTEND)
  },
  {
    category: TechCategory.BACKEND,
    technologies: getTechnologiesByCategory(TechCategory.BACKEND)
  },
  {
    category: TechCategory.DEVOPS,
    technologies: getTechnologiesByCategory(TechCategory.DEVOPS)
  }
  // Uncomment if needed
  // {
  //   category: TechCategory.TOOLS,
  //   technologies: getTechnologiesByCategory(TechCategory.TOOLS)
  // }
];
