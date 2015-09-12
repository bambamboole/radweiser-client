angular.module 'app.faq', []

.config ($stateProvider) ->

  $stateProvider
  .state 'app.faq',
    url: '/faq'
    controller: 'FaqController'
    controllerAs: 'faq'
    templateUrl: 'sections/faq/faq.html'


.controller 'FaqController', ->
  @title = 'FAQ'

  return @