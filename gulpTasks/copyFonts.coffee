module.exports = (gulp, plugins) ->

  vendorFonts = [
    'bower_components/font-awesome/fonts/*.*'
  ]
  ->
    gulp.src vendorFonts
    .pipe gulp.dest 'build/assets/fonts'