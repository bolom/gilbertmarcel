module.exports = {
  content: [
    '/Users/dmytrostrukov/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/spina-2.15.0/app/views/**/*.*',
'/Users/dmytrostrukov/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/spina-2.15.0/app/components/**/*.*',
'/Users/dmytrostrukov/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/spina-2.15.0/app/helpers/**/*.*',
'/Users/dmytrostrukov/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/spina-2.15.0/app/assets/javascripts/**/*.js',
'/Users/dmytrostrukov/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0/gems/spina-2.15.0/app/**/application.tailwind.css'
  ],
  theme: {
    fontFamily: {
      body: ['Metropolis'],
      mono: ['ui-monospace', 'SFMono-Regular', 'Menlo', 'Monaco', 'Consolas', "Liberation Mono", "Courier New", 'monospace']
    },
    extend: {
      colors: {
        spina: {
          light: '#797ab8',
          DEFAULT: '#6865b4',
          dark: '#3a3a70'
        }
      }
    }
  },
  plugins: [
    require('@tailwindcss/forms'),
	require('@tailwindcss/aspect-ratio'),
	require('@tailwindcss/typography')
  ]
}
