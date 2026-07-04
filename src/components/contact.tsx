import { Reveal } from "./reveal";

export function Contact() {
  return (
    <section id="contact" className="scroll-mt-16 border-t border-line">
      <div className="mx-auto max-w-6xl px-6 py-28 md:py-40">
        <Reveal>
          <h2 className="max-w-3xl text-4xl leading-[1.1] font-medium tracking-tighter text-balance md:text-6xl">
            Have something worth building?
          </h2>
          <p className="mt-6 max-w-[48ch] leading-relaxed text-muted">
            Tell me about your product, your team, or the app that needs to
            hold up under real traffic.
          </p>
          <a
            href="mailto:elberte.dev@gmail.com"
            className="mt-10 inline-block rounded-full bg-foreground px-7 py-3.5 text-sm font-medium text-background transition-transform duration-200 hover:-translate-y-0.5 active:scale-[0.98]"
          >
            Get in touch
          </a>
        </Reveal>
      </div>
    </section>
  );
}
