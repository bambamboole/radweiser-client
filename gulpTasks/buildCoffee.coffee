module.exports = (gulp, plugins) ->

  coffeeFiles = [
    'src/**/*.coffee'
  ]

  ->
    gulp.src coffeeFiles
    .pipe plugins.coffee({bare: true}).on 'error', plugins.util.log
    .pipe plugins.concat 'app.js'
    .pipe gulp.dest 'build/assets/js'




