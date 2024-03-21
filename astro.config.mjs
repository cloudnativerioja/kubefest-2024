import { defineConfig } from "astro/config";
import purgecss from "astro-purgecss";
import compress from "astro-compress";

// https://astro.build/config
export default defineConfig({
  site: "https://kubefest.com",
  integrations: [purgecss(), compress()],
});
