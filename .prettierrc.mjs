/** @type {import("prettier").Config} */
const config = {
  plugins: ["prettier-plugin-astro"],
  overrides: [
    {
      files: "*.astro",
      options: {
        parser: "astro",
        trailingComma: "none",
        tabWidth: 2,
        semi: true,
        singleQuote: true,
      },
    },
  ],
};

export default config;
