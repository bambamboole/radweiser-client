angular.module 'app',
  [
    'ngAnimate'
    'ngStorage'
    'ngMaterial'
    'pascalprecht.translate'
    'ui.router'
    'templates'

    'app.utils'
    'app.sections'
  ]


.config ($translateProvider, $stateProvider, $urlRouterProvider, $httpProvider) ->

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

  $httpProvider.interceptors.push 'authInterceptor'

  $httpProvider.defaults.useXDomain = true
  delete $httpProvider.defaults.headers.common['X-Requested-With']


.constant 'API', 'http://localhost:2342/api'
