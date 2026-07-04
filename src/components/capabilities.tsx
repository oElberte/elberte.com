import {
  CloudArrowUp,
  DeviceMobile,
  GitBranch,
  Sparkle,
} from "@phosphor-icons/react/dist/ssr";
import { Reveal } from "./reveal";

const ITEMS = [
  {
    title: "Mobile architecture",
    body: "Flutter at production scale: clean architecture, micro frontends, and deep native iOS and Android integration.",
    icon: DeviceMobile,
  },
  {
    title: "AI engineering",
    body: "LLM features and multi-step agents wired into real products, connected to real APIs and data.",
    icon: Sparkle,
  },
  {
    title: "Back end & cloud",
    body: "Go and Node microservices on Google Cloud and AWS, stable under heavy traffic.",
    icon: CloudArrowUp,
  },
  {
    title: "Delivery & leadership",
    body: "CI/CD across multiple repositories, automated testing, and mentoring that raises the whole team.",
    icon: GitBranch,
  },
];

export function Capabilities() {
  return (
    <section className="mx-auto max-w-6xl px-6 py-24 md:py-32">
      <div className="grid gap-14 md:grid-cols-12">
        <div className="md:col-span-4">
          <div className="md:sticky md:top-24">
            <Reveal>
              <h2 className="text-3xl font-medium tracking-tight md:text-4xl">
                What I do
              </h2>
              <p className="mt-4 max-w-[30ch] leading-relaxed text-muted">
                Deep on mobile, fluent across the stack.
              </p>
            </Reveal>
          </div>
        </div>
        <div className="space-y-14 md:col-span-8">
          {ITEMS.map((item, i) => (
            <Reveal key={item.title} delay={0.05 * i}>
              <item.icon size={24} className="text-accent" />
              <h3 className="mt-4 text-xl font-medium tracking-tight">
                {item.title}
              </h3>
              <p className="mt-2 max-w-[58ch] leading-relaxed text-muted">
                {item.body}
              </p>
            </Reveal>
          ))}
        </div>
      </div>
    </section>
  );
}
