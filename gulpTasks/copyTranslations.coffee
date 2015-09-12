module.exports = (gulp, plugins) ->

  vendorFonts = [
    'src/translations/*.json'
  ]
  ->
    gulp.src vendorFonts
    .pipe gulp.dest 'build/assets/translations'