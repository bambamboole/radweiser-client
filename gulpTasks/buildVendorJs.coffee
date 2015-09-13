module.exports = (gulp, plugins) ->

  vendorJsFiles = [
    'bower_components/angular/angular.js'
    'bower_components/angular-animate/angular-animate.js'
    'bower_components/angular-translate/angular-translate.js'
    'bower_components/angular-translate-loader-static-files/angular-translate-loader-static-files.js'
    'bower_components/angular-ui-router/release/angular-ui-router.js'
    'bower_components/angular-material/angular-material.js'
    'bower_components/angular-aria/angular-aria.js'
    'bower_components/ngstorage/ngStorage.js'
    'bower_components/angular-sanitize/angular-sanitize.js'
    'bower_components/angular-resource/angular-resource.js'
    'bower_components/angular-mailchimp/angular-mailchimp.js'
    'bower_components/v-accordion/dist/v-accordion.js'
  ]

  ->
    gulp.src vendorJsFiles
    .pipe plugins.concat 'vendor.js'
    .pipe gulp.dest 'build/assets/js'