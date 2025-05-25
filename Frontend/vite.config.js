// import * as path from 'path';
import react from "@vitejs/plugin-react";
import { defineConfig } from "vite";

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [
    react({
      babel: {
        parserOpts: {
          plugins: ["decorators-legacy"],
        },
      },
    }),
  ],
  server: {
    port: 3000,
  },
  build: {
    outDir: 'dist',
  },
});