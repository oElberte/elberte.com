import {
  ArrowUpRight,
  DeviceMobile,
  Monitor,
  Plug,
} from "@phosphor-icons/react/dist/ssr";
import { Reveal } from "./reveal";

const FEATURES = [
  {
    title: "Agents wired to Flutter",
    body: "Connects Claude Code, Codex, and Pi to your Flutter projects through a CLI and MCP server.",
    icon: Plug,
  },
  {
    title: "Desktop and Android lab",
    body: "Runs against a Linux desktop and Android lab, capturing screenshots and logs as recorded evidence.",
    icon: Monitor,
  },
  {
    title: "Local-first and open source",
    body: "Runs the lab locally and keeps screenshots and logs on your machine. Open source, with inspectable runs.",
    icon: DeviceMobile,
  },
];

export function Pickforge() {
  return (
    <section id="pickforge" className="scroll-mt-16 border-y border-line">
      <div className="mx-auto max-w-6xl px-6 py-24 md:py-32">
        <Reveal>
          <h2 className="text-3xl font-medium tracking-tight md:text-4xl">
            Creator of Pickforge
          </h2>
          <p className="mt-4 max-w-[56ch] leading-relaxed text-muted">
            Pickforge connects AI coding agents to Flutter: run, inspect, and
            verify real apps with recorded evidence.
          </p>
        </Reveal>

        <div className="mt-14 grid gap-4 md:grid-cols-3">
          {FEATURES.map((feature, i) => (
            <Reveal
              key={feature.title}
              delay={0.05 * i}
              className="rounded-2xl border border-line bg-surface p-7"
            >
              <feature.icon size={26} className="text-accent" />
              <h3 className="mt-5 font-medium tracking-tight">{feature.title}</h3>
              <p className="mt-1.5 text-sm leading-relaxed text-muted">
                {feature.body}
              </p>
            </Reveal>
          ))}
        </div>

        <Reveal delay={0.2} className="mt-10">
          <a
            href="https://pickforge.dev"
            target="_blank"
            rel="noopener noreferrer"
            className="group inline-flex items-center gap-1.5 text-sm font-medium text-foreground transition-colors hover:text-accent"
          >
            Visit pickforge.dev
            <ArrowUpRight
              size={15}
              className="transition-transform duration-200 group-hover:-translate-y-0.5 group-hover:translate-x-0.5"
            />
          </a>
        </Reveal>
      </div>
    </section>
  );
}
