import type { Metadata } from "next";
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
  title: "Evolve | Transform Your Brand",
  description: "Evolve is a modern brand transformation platform helping businesses grow and adapt in the digital age.",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en">
      <body
        className={`${geistSans.variable} ${geistMono.variable} antialiased`}
      >
        {children}
        <script 
          src="https://app.fassix.com/chatbot.js" 
          async 
          fassix-key="ec2aaa29-3c81-4445-b0b3-d78ada711734"
        />
      </body>
    </html>
  );
}
