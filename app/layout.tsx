import type { Metadata } from "next";
import "./globals.css";

export const metadata: Metadata = {
  title: "Meu Closet",
  description: "Organize e catalogue suas roupas.",
};

export default function RootLayout({ children }: Readonly<{ children: React.ReactNode }>) {
  return (
    <html lang="pt-BR">
      <body>{children}</body>
    </html>
  );
}
