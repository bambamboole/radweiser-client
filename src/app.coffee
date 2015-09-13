angular.module 'app',
  [
    'ngAnimate'
    'ngStorage'
    'ngResource'
    'ngSanitize'
    'ngMaterial'
    'pascalprecht.translate'
    'ui.router'
    'templates'
    'vAccordion'
    'mailchimp'

    'app.utils'
    'app.sections'
    'app.navigation'
  ]


.config ($translateProvider, $stateProvider, $urlRouterProvider, $httpProvider) ->



  $urlRouterProvider.otherwise '/'

  $stateProvider
  .state 'app',
    abstract: true
    templateUrl: 'layout.html'
    controller: 'AppController'
    onEnter: (auth) ->
       if auth.userHasValidToken()
         auth.startRefreshTokenInterval() if not auth.refreshInterval
         auth.refreshToken()

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



.controller 'AppController', ($scope) ->

  $scope.username = 'radweiser'
  $scope.dc = 'us11.list-manage.com'
  $scope.u = '805a3b9048f6ae0dcdbaa7259'
  $scope.id = 'aef271a104'


.config ($mdThemingProvider) ->
  $mdThemingProvider
    .theme('default')
    .primaryPalette('green')
    .accentPalette 'grey'
