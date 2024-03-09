module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ],
  plugins: [require("daisyui")],

  theme: {
    extend: {
      colors: {
        'custom-skin': '#e8c8be',
        'custom-okre': '#d19d87',
        'custom-orange': '#c2734e',
        'custom-beige': '#d7be9f',
        'custom-brown': '#4c484f',
      },
    fontFamily: {
      poppins: ["Poppins", "sans-serif"],
    }
    },
  },
}
