import {
  ArrowUpRight,
  ChartBar,
  Crosshair,
  Flask,
  Gauge,
  Waveform,
} from "@phosphor-icons/react/dist/ssr";
import { Reveal } from "./reveal";

const TOOLS = [
  {
    name: "PickForge",
    line: "Inspect any mobile UI element in seconds.",
    icon: Crosshair,
    className:
      "md:col-span-3 bg-[linear-gradient(135deg,rgba(224,163,92,0.14),rgba(224,163,92,0.02))]",
  },
  {
    name: "PickLab",
    line: "Native app testing, wired for MCP agents.",
    icon: Flask,
    className:
      "md:col-span-3 bg-surface bg-[radial-gradient(rgba(242,242,239,0.06)_1px,transparent_1px)] bg-[size:14px_14px]",
  },
  {
    name: "PickScribe",
    line: "Voice to text that keeps up with you.",
    icon: Waveform,
    className: "md:col-span-2 bg-surface",
  },
  {
    name: "PickGauge",
    line: "Every subscription, tracked in one place.",
    icon: Gauge,
    className: "md:col-span-2 bg-surface-2",
  },
  {
    name: "PickArena",
    line: "Benchmark AI models head to head.",
    icon: ChartBar,
    className: "md:col-span-2 bg-surface",
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
            My developer tools brand: five local-first instruments for
            developers who would rather ship than wait.
          </p>
        </Reveal>

        <div className="mt-14 grid gap-4 md:grid-cols-6">
          {TOOLS.map((tool, i) => (
            <Reveal
              key={tool.name}
              delay={0.05 * i}
              className={`rounded-2xl border border-line p-7 ${tool.className}`}
            >
              <tool.icon size={26} className="text-accent" />
              <h3 className="mt-5 font-medium tracking-tight">{tool.name}</h3>
              <p className="mt-1.5 text-sm leading-relaxed text-muted">
                {tool.line}
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
