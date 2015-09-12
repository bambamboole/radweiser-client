app = angular.module 'app',
  [
    'ngAnimate'
    'pascalprecht.translate'
    'ui.router'
    'ui.bootstrap'
    'templates'

    'app.home'
    'app.faq'
    'app.blog'
  ]


app.config ($translateProvider) ->
  $translateProvider
    .registerAvailableLanguageKeys ['de', 'en'], languageKeys
    .useStaticFilesLoader
      prefix: 'assets/translations/lang-'
      suffix: '.json'
    .useSanitizeValueStrategy 'escaped'
    .determinePreferredLanguage()
    .fallbackLanguage 'de'

  languageKeys =
    'en_US': 'en'
    'en_UK': 'en'
    'de_DE': 'de'
    'de_CH': 'de'
    'de_AT': 'de'


app.controller 'HeaderController', ($scope) ->



