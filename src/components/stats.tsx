"use client";

import { animate, useInView, useReducedMotion } from "motion/react";
import { useEffect, useRef } from "react";

const STATS = [
  { value: 5, suffix: "+", label: "years shipping production software" },
  { value: 45, suffix: "%", label: "operational cost cut in a legacy migration" },
  { value: 80, suffix: "%", label: "efficiency gained on a rebuilt core system" },
  { value: 75, suffix: "%", label: "fewer database reads after persistence work" },
];

function Counter({ value, suffix }: { value: number; suffix: string }) {
  const ref = useRef<HTMLSpanElement>(null);
  const inView = useInView(ref, { once: true, margin: "-15% 0px" });
  const reduce = useReducedMotion();

  useEffect(() => {
    if (!inView || reduce || !ref.current) return;
    const controls = animate(0, value, {
      duration: 1.4,
      ease: [0.16, 1, 0.3, 1],
      onUpdate: (v) => {
        if (ref.current) ref.current.textContent = `${Math.round(v)}${suffix}`;
      },
    });
    return () => controls.stop();
  }, [inView, reduce, value, suffix]);

  return (
    <span ref={ref} className="font-mono text-5xl tracking-tight md:text-6xl">
      {value}
      {suffix}
    </span>
  );
}

export function Stats() {
  return (
    <section className="mx-auto max-w-6xl px-6 py-24 md:py-32">
      <dl className="grid grid-cols-1 gap-12 sm:grid-cols-2 lg:grid-cols-4 lg:gap-8">
        {STATS.map((stat) => (
          <div key={stat.label} className="border-l border-line pl-6">
            <dt className="sr-only">{stat.label}</dt>
            <dd>
              <Counter value={stat.value} suffix={stat.suffix} />
              <p className="mt-3 max-w-[24ch] text-sm leading-relaxed text-muted">
                {stat.label}
              </p>
            </dd>
          </div>
        ))}
      </dl>
    </section>
  );
}
