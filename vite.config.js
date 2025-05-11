import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'
import react from '@vitejs/plugin-react'


export default defineConfig({
  plugins: [react()],
  base: "/app-icons/",  // important for GitHub Pages
})
