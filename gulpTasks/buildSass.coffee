
module.exports = (gulp, plugins) ->

  sassFiles = [
    'src/app.scss'
  ]

  ->
    gulp.src sassFiles
    .pipe plugins.sass().on 'error', plugins.sass.logError
    .pipe plugins.concat 'styles.css'
    .pipe gulp.dest 'build/assets/css'
