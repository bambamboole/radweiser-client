module.exports = (gulp, plugins) ->

  templateFiles = [
    'src/**/*.html'
  ]

  ->
    gulp.src templateFiles
    .pipe plugins.angularTemplatecache {standalone: true}
    .pipe gulp.dest 'build/assets/js'