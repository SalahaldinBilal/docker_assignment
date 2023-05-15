import solid from "solid-start/vite";
import { defineConfig } from "vite";

export default defineConfig({
  plugins: [solid({ ssr: false })],
  define: {
    'import.meta.env.API_URL': JSON.stringify(process.env.API_URL || 'http://localhost:5200')
  }
});
