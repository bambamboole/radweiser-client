app = angular.module 'app.faq', []

app.config ($stateProvider, $urlRouterProvider) ->
  $urlRouterProvider.otherwise '/'

  $stateProvider
  .state 'faq',
    url: '/faq'
    controller: 'FaqController'
    controllerAs: 'faq'
    templateUrl: 'modules/faq/faq.html'


app.controller 'FaqController', ->
  faq = this

  return faq