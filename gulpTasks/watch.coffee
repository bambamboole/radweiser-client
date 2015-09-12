module.exports = (gulp, plugins) ->

  ->
    gulp.watch ['src/**/*.scss'], ['buildSass']
    gulp.watch ['src/**/*.coffee'], ['buildCoffee']
    gulp.watch ['src/**/*.html'], ['buildTemplates']
    gulp.watch ['build/assets/**/*.*'], ['livereload']