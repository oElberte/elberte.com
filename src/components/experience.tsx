import { Reveal } from "./reveal";

const CURRENT = {
  company: "Salsa Technology",
  role: "Flutter Specialist & Mobile Architect",
  period: "2025 - present",
  summary:
    "Leading architecture for high-scale Flutter apps: native Android home widgets, deep platform integrations, and AI agent features running in production.",
  tech: ["Flutter", "Kotlin", "Firebase", "GCP"],
};

const PAST = [
  {
    company: "GAV Resorts",
    role: "Flutter Engineer & Mobile Architect",
    period: "2024 - 2025",
    summary:
      "Rebuilt a legacy system for 80% faster processes and 45% lower operational costs, backed by Go and Node microservices.",
  },
  {
    company: "Zellor AI",
    role: "Software & AI Engineer",
    period: "2023 - 2024",
    summary:
      "Shipped LLM-powered features and a back-end migration that halved query times and cut storage costs by 30%.",
  },
  {
    company: "MusicPlayce",
    role: "Flutter Developer",
    period: "2022 - 2023",
    summary:
      "Cut redundant Firebase reads by 75% with persisted state, and shipped AI search that lifted engagement by 23%.",
  },
  {
    company: "Farsoft Systems",
    role: "Flutter Developer",
    period: "2021 - 2022",
    summary:
      "Helped migrate legacy CRM and ERP systems to a modern architecture with clean, tested components.",
  },
];

export function Experience() {
  return (
    <section id="experience" className="scroll-mt-16">
      <div className="mx-auto max-w-6xl px-6 py-24 md:py-32">
        <Reveal>
          <h2 className="text-3xl font-medium tracking-tight md:text-4xl">
            Experience
          </h2>
        </Reveal>

        <Reveal delay={0.1} className="mt-12">
          <div className="grid gap-8 rounded-2xl bg-surface p-8 md:grid-cols-12 md:p-10">
            <div className="md:col-span-5">
              <p className="font-mono text-xs text-accent">{CURRENT.period}</p>
              <h3 className="mt-3 text-2xl font-medium tracking-tight">
                {CURRENT.company}
              </h3>
              <p className="mt-1 text-sm text-muted">{CURRENT.role}</p>
            </div>
            <div className="md:col-span-7">
              <p className="leading-relaxed text-muted">{CURRENT.summary}</p>
              <ul className="mt-6 flex flex-wrap gap-2">
                {CURRENT.tech.map((t) => (
                  <li
                    key={t}
                    className="rounded-full border border-line px-3 py-1 font-mono text-xs text-muted"
                  >
                    {t}
                  </li>
                ))}
              </ul>
            </div>
          </div>
        </Reveal>

        <div className="mt-16 grid gap-x-12 gap-y-14 md:grid-cols-2">
          {PAST.map((job, i) => (
            <Reveal key={job.company} delay={0.06 * i}>
              <p className="font-mono text-xs text-muted">{job.period}</p>
              <h3 className="mt-3 text-lg font-medium tracking-tight">
                {job.company}
              </h3>
              <p className="mt-0.5 text-sm text-muted">{job.role}</p>
              <p className="mt-4 max-w-[52ch] text-sm leading-relaxed text-muted">
                {job.summary}
              </p>
            </Reveal>
          ))}
        </div>
      </div>
    </section>
  );
}
