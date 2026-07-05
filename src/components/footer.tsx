const LINKS = [
  { name: "GitHub", href: "https://github.com/ElbertePlinio" },
  { name: "X", href: "https://x.com/ElbertePlinio" },
  { name: "LinkedIn", href: "https://www.linkedin.com/in/ElbertePlinio/" },
  { name: "Pickforge", href: "https://pickforge.dev" },
];

export function Footer() {
  return (
    <footer className="border-t border-line">
      <div className="mx-auto flex max-w-6xl flex-col gap-6 px-6 py-10 sm:flex-row sm:items-center sm:justify-between">
        <p className="text-sm text-muted">© 2026 Elberte Plínio</p>
        <nav className="flex flex-wrap gap-6">
          {LINKS.map((link) => (
            <a
              key={link.name}
              href={link.href}
              target="_blank"
              rel="noopener noreferrer"
              className="text-sm text-muted transition-colors hover:text-foreground"
            >
              {link.name}
            </a>
          ))}
        </nav>
      </div>
    </footer>
  );
}
