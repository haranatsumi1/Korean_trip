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
        'custom-pink': '#D6B0BA',
        'custom-blue': '#9FB0CF',
        'custom-green': '#E8E9D5',
        'custom-berge': '#E8D7D1',
        'custom-rose': '#CFB4BA',
      },
    fontFamily: {
      poppins: ["Poppins", "sans-serif"],
    }
    },
  },
}
