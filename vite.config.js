import { defineConfig } from "vite";
import tailwindcss from "@tailwindcss/vite";

export default defineConfig({
  root: "./",
  plugins: [
    tailwindcss(),
  ],
  server: {
    port: 3000,
    strictPort: true,
    hmr: {
      host: "localhost",
    },
    cors: true,
  },
  build: {
    outDir: "dist",
    manifest: true,
    emptyOutDir: true,
    minify: false,
    rollupOptions: {
      input: {
        main: "./src/js/main.js", // Główny plik JS dla front-office
      },
    },
  },
});