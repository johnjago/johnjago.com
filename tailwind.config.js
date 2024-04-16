/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ['layouts/**/*.html'],
  theme: {
    extend: {
      fontFamily: {
        'sans': [
          'Source\\ Sans\\ 3',
          '-apple-system',
          'BlinkMacSystemFont',
          'Segoe\\ UI',
          'Roboto',
          'Oxygen-Sans',
          'Ubuntu',
          'Cantarell',
          'Helvetica\\ Neue',
          'sans-serif'
        ],
        'handwriting': [
          'Pacifico',
          'cursive'
        ]
      },
    },
  },
  plugins: [
    require('@tailwindcss/typography'),
  ],
}
