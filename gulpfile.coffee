gulp = require 'gulp'
seq = require 'run-sequence'
gulpLoadPlugins = require 'gulp-load-plugins'
plugins = gulpLoadPlugins()

getTask = (task) ->
  require('./gulpTasks/' + task)(gulp, plugins)


gulp.task 'buildCoffee', getTask 'buildCoffee'
gulp.task 'buildSass', getTask 'buildSass'
gulp.task 'buildTemplates', getTask 'buildTemplates'
gulp.task 'buildVendorJs', getTask 'buildVendorJs'
gulp.task 'copyFonts', getTask 'copyFonts'
gulp.task 'copyImages', getTask 'copyImages'
gulp.task 'copyTranslations', getTask 'copyTranslations'
gulp.task 'watch', getTask 'watch'
gulp.task 'clean', getTask 'clean'


gulp.task 'connect', ->
  plugins.connect.server
    root: 'build'
    host: '0.0.0.0'
    port: 3000
    livereload: true

gulp.task 'livereload', ->
  gulp.src 'build/index.html'
  .pipe plugins.connect.reload()


gulp.task 'default', (done) ->
  tasks = [
    'connect'
    'watch'
  ]
  seq 'build', tasks, done


gulp.task 'build', (done) ->
  tasks = [
    'buildVendorJs'
    'buildCoffee'
    'buildTemplates'
    'buildSass'
    'copyFonts'
    'copyImages'
    'copyTranslations'
  ]
  seq 'clean', tasks, done