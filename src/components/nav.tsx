import { Logo } from "./logo";

export function Nav() {
  return (
    <header className="fixed inset-x-0 top-0 z-40 border-b border-line bg-background/70 backdrop-blur-md">
      <nav className="mx-auto flex h-16 max-w-6xl items-center justify-between px-6">
        <a
          href="#top"
          className="flex items-center gap-3 text-sm font-medium tracking-tight"
        >
          <Logo size={20} />
          Elberte Plínio
        </a>
        <div className="flex items-center gap-8">
          <a
            href="#experience"
            className="hidden text-sm text-muted transition-colors hover:text-foreground sm:block"
          >
            Experience
          </a>
          <a
            href="#pickforge"
            className="hidden text-sm text-muted transition-colors hover:text-foreground sm:block"
          >
            Pickforge
          </a>
          <a
            href="mailto:elberte.dev@gmail.com"
            className="rounded-full bg-foreground px-4 py-1.5 text-sm font-medium text-background transition-transform duration-200 hover:-translate-y-px active:scale-[0.98]"
          >
            Get in touch
          </a>
        </div>
      </nav>
    </header>
  );
}
