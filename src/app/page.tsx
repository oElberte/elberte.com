import { Capabilities } from "@/components/capabilities";
import { Contact } from "@/components/contact";
import { Experience } from "@/components/experience";
import { Footer } from "@/components/footer";
import { Hero } from "@/components/hero";
import { Nav } from "@/components/nav";
import { Pickforge } from "@/components/pickforge";
import { Stats } from "@/components/stats";
import { TechMarquee } from "@/components/tech-marquee";

export default function Home() {
  return (
    <>
      <Nav />
      <main>
        <Hero />
        <TechMarquee />
        <Stats />
        <Experience />
        <Pickforge />
        <Capabilities />
        <Contact />
      </main>
      <Footer />
    </>
  );
}
