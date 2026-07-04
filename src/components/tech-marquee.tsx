const TECH: Array<[slug: string, name: string]> = [
  ["flutter", "Flutter"],
  ["dart", "Dart"],
  ["kotlin", "Kotlin"],
  ["swift", "Swift"],
  ["go", "Go"],
  ["nodedotjs", "Node.js"],
  ["typescript", "TypeScript"],
  ["firebase", "Firebase"],
  ["googlecloud", "Google Cloud"],
  ["docker", "Docker"],
  ["postgresql", "PostgreSQL"],
  ["githubactions", "GitHub Actions"],
];

function Row({ hidden = false }: { hidden?: boolean }) {
  return (
    <div
      aria-hidden={hidden}
      className="flex shrink-0 items-center gap-14 pr-14"
    >
      {TECH.map(([slug, name]) => (
        <span key={slug} className="flex items-center gap-3">
          {/* eslint-disable-next-line @next/next/no-img-element */}
          <img
            src={`https://cdn.simpleicons.org/${slug}/8a8a86`}
            alt=""
            width={20}
            height={20}
            loading="lazy"
          />
          <span className="text-sm whitespace-nowrap text-muted">{name}</span>
        </span>
      ))}
    </div>
  );
}

export function TechMarquee() {
  return (
    <section aria-label="Technologies I work with" className="py-6">
      <div
        className="overflow-hidden"
        style={{
          maskImage:
            "linear-gradient(to right, transparent, black 12%, black 88%, transparent)",
        }}
      >
        <div className="marquee-track flex w-max">
          <Row />
          <Row hidden />
        </div>
      </div>
    </section>
  );
}
