"use client";

import { motion, useReducedMotion } from "motion/react";

const LEFT_BRACKET = "M13 4 H7 V28 H13";
const RIGHT_BRACKET = "M23 4 H29 V28 H23";
const CODE_LINES = ["M15 10 H21", "M17 16 H22", "M15 22 H19"];

export function Logo({
  size = 22,
  delay = 0,
  strokeWidth = 2.5,
  className,
}: {
  size?: number;
  delay?: number;
  strokeWidth?: number;
  className?: string;
}) {
  const reduce = useReducedMotion();

  const draw = (d: number) => ({
    initial: reduce ? false : { pathLength: 0, opacity: 0 },
    animate: { pathLength: 1, opacity: 1 },
    transition: {
      pathLength: { duration: 0.8, delay: d, ease: [0.65, 0, 0.35, 1] as const },
      opacity: { duration: 0.01, delay: d },
    },
  });

  return (
    <motion.svg
      viewBox="0 0 36 32"
      width={size * (36 / 32)}
      height={size}
      fill="none"
      strokeWidth={strokeWidth}
      strokeLinecap="butt"
      strokeLinejoin="miter"
      className={className}
      aria-hidden
    >
      <motion.path d={LEFT_BRACKET} stroke="currentColor" {...draw(delay)} />
      <motion.path
        d={RIGHT_BRACKET}
        stroke="currentColor"
        {...draw(delay + 0.15)}
      />
      <motion.path
        d={CODE_LINES[0]}
        stroke="currentColor"
        {...draw(delay + 0.35)}
      />
      <motion.path
        d={CODE_LINES[1]}
        stroke="var(--accent)"
        {...draw(delay + 0.45)}
      />
      <motion.path
        d={CODE_LINES[2]}
        stroke="currentColor"
        {...draw(delay + 0.55)}
      />
      <path
        d={LEFT_BRACKET}
        pathLength={100}
        stroke="var(--accent)"
        strokeDasharray="14 86"
        className="logo-spark"
      />
      <path
        d={RIGHT_BRACKET}
        pathLength={100}
        stroke="var(--accent)"
        strokeDasharray="14 86"
        className="logo-spark logo-spark-rev"
      />
    </motion.svg>
  );
}
