# elberte.dev

Personal portfolio for Elberte Plínio. Next.js 16, Tailwind v4, Motion, Phosphor icons. Uses bun.

```bash
bun install
bun run dev    # local dev
bun run build  # production build
```

## Design notes

- Single locked dark theme. Tokens live in `src/app/globals.css`.
- One accent: ember (`--accent: #e0a35c`), a nod to "forge".
- Radius system: interactive elements are full-pill, surfaces are `rounded-2xl`.
- Fonts: Geist + Geist Mono via `next/font`.
- All motion honors `prefers-reduced-motion`.
- Tech logos in the marquee load from cdn.simpleicons.org.
- Logo: bracket mark with code lines (`src/components/logo.tsx`), a nod to Pickforge. Strokes draw in on load, then two ember sparks orbit the brackets forever (disabled under reduced motion). Static versions: `src/app/icon.svg` (favicon) and `src/app/apple-icon.png`.
