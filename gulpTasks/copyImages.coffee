module.exports = (gulp, plugins) ->

  images = [
    'src/images/*.*'
  ]

  ->
    gulp.src images
    .pipe gulp.dest 'build/assets/images'