angular.module 'app.contact', []

.config ($stateProvider) ->

  $stateProvider
  .state 'app.contact',
    url: '/contact'
    controller: 'ContactController'
    controllerAs: 'contact'
    templateUrl: 'sections/contact/contact.html'


.controller 'ContactController', ->
  @title = 'Kontakt'

  return @