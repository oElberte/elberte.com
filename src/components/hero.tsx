"use client";

import { motion, useReducedMotion } from "motion/react";
import {
  ArrowDown,
  GithubLogo,
  LinkedinLogo,
  XLogo,
} from "@phosphor-icons/react";
import { Logo } from "./logo";

const SOCIALS = [
  { name: "GitHub", href: "https://github.com/oElberte", icon: GithubLogo },
  { name: "X", href: "https://x.com/ElbertePlinio", icon: XLogo },
  {
    name: "LinkedIn",
    href: "https://www.linkedin.com/in/oelberte/",
    icon: LinkedinLogo,
  },
];

const ease = [0.16, 1, 0.3, 1] as const;

export function Hero() {
  const reduce = useReducedMotion();

  const item = (delay: number) => ({
    initial: reduce ? false : { opacity: 0, y: 28 },
    animate: { opacity: 1, y: 0 },
    transition: { duration: 0.9, delay, ease },
  });

  return (
    <section id="top" className="relative overflow-hidden">
      <div
        aria-hidden
        className="absolute -top-40 right-[-10%] h-[480px] w-[640px] rounded-full bg-accent-soft blur-[160px]"
      />
      <div
        aria-hidden
        className="pointer-events-none absolute top-1/2 right-[7%] hidden -translate-y-1/2 text-foreground opacity-30 lg:block"
      >
        <Logo size={360} delay={0.5} strokeWidth={0.8} />
      </div>
      <div className="mx-auto flex min-h-[100dvh] max-w-6xl flex-col justify-center px-6 pt-24 pb-16">
        <motion.h1
          {...item(0.1)}
          className="max-w-4xl text-4xl leading-[1.05] font-medium tracking-tighter text-balance md:text-6xl lg:text-7xl"
        >
          Mobile software that <span className="text-accent">holds up</span> at
          scale.
        </motion.h1>
        <motion.p
          {...item(0.25)}
          className="mt-8 max-w-[52ch] text-base leading-relaxed text-muted md:text-lg"
        >
          I&apos;m Elberte Plínio, Flutter specialist and AI engineer. Five
          years shipping high-scale apps for companies in Brazil, Ireland, and
          beyond.
        </motion.p>
        <motion.div
          {...item(0.4)}
          className="mt-10 flex flex-wrap items-center gap-4"
        >
          <a
            href="mailto:elberte.dev@gmail.com"
            className="rounded-full bg-foreground px-6 py-3 text-sm font-medium text-background transition-transform duration-200 hover:-translate-y-0.5 active:scale-[0.98]"
          >
            Get in touch
          </a>
          <a
            href="#experience"
            className="group flex items-center gap-2 rounded-full border border-line px-6 py-3 text-sm font-medium text-foreground transition-colors duration-200 hover:border-accent/50"
          >
            See experience
            <ArrowDown
              size={15}
              className="text-muted transition-transform duration-200 group-hover:translate-y-0.5"
            />
          </a>
          <span aria-hidden className="mx-2 hidden h-5 w-px bg-foreground/15 sm:block" />
          <span className="flex items-center gap-5">
            {SOCIALS.map((social) => (
              <a
                key={social.name}
                href={social.href}
                target="_blank"
                rel="noopener noreferrer"
                aria-label={social.name}
                className="text-muted transition-colors duration-200 hover:text-foreground"
              >
                <social.icon size={21} />
              </a>
            ))}
          </span>
        </motion.div>
      </div>
    </section>
  );
}
