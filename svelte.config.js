import adapter from '@sveltejs/adapter-node';
import { vitePreprocess } from '@sveltejs/vite-plugin-svelte';

/** @type {import('@sveltejs/kit').Config} */
const config = {
  preprocess: vitePreprocess(),

  kit: {
    // Use the Node adapter instead of the auto adapter
    adapter: adapter({
      out: 'build' // Optional: Customize the output directory
    })
  }
};

export default config;
