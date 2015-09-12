module.exports = (gulp, plugins) ->

  vendorFonts = [
    'bower_components/font-awesome/fonts/*.*'
    'bower_components/bootstrap-sass/assets/fonts/bootstrap/*.*'
  ]
  ->
    gulp.src vendorFonts
    .pipe gulp.dest 'build/assets/fonts'