import { Analytics } from "@vercel/analytics/next";
import type { Metadata, Viewport } from "next";
import { Geist, Geist_Mono } from "next/font/google";
import "./globals.css";

const geistSans = Geist({
  variable: "--font-geist-sans",
  subsets: ["latin"],
});

const geistMono = Geist_Mono({
  variable: "--font-geist-mono",
  subsets: ["latin"],
});

export const metadata: Metadata = {
  metadataBase: new URL("https://elberte.com"),
  title: "Elberte Plínio | Flutter Specialist & AI Engineer",
  description:
    "Flutter specialist and AI engineer shipping high-scale mobile software. Creator of Pickforge.",
  alternates: {
    canonical: "/",
  },
  openGraph: {
    title: "Elberte Plínio",
    description:
      "Flutter specialist and AI engineer shipping high-scale mobile software. Creator of Pickforge.",
    url: "/",
    siteName: "Elberte Plínio",
    type: "website",
  },
  twitter: {
    card: "summary_large_image",
    title: "Elberte Plínio",
    description:
      "Flutter specialist and AI engineer shipping high-scale mobile software. Creator of Pickforge.",
    creator: "@ElbertePlinio",
  },
};

export const viewport: Viewport = {
  colorScheme: "dark",
  themeColor: "#0b0b0d",
};

const grain =
  "url(\"data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='160' height='160'%3E%3Cfilter id='n'%3E%3CfeTurbulence type='fractalNoise' baseFrequency='0.8' numOctaves='4'/%3E%3C/filter%3E%3Crect width='100%25' height='100%25' filter='url(%23n)'/%3E%3C/svg%3E\")";

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html
      lang="en"
      className={`${geistSans.variable} ${geistMono.variable} h-full antialiased`}
    >
      <body className="flex min-h-full flex-col">
        {children}
        <Analytics />
        <div
          aria-hidden
          className="pointer-events-none fixed inset-0 z-50 opacity-[0.035]"
          style={{ backgroundImage: grain }}
        />
      </body>
    </html>
  );
}
