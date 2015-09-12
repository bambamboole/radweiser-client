angular.module 'app',
  [
    'ngAnimate'
    'ngMaterial'
    'pascalprecht.translate'
    'ui.router'
    'templates'

    'app.sections'
  ]


.config ($translateProvider, $stateProvider, $urlRouterProvider) ->

  $urlRouterProvider.otherwise '/'

  $stateProvider
  .state 'app',
    abstract: true
    templateUrl: 'layout.html'

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





