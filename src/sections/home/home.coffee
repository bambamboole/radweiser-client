angular.module 'app.home', []

.config ($stateProvider) ->

  $stateProvider
  .state 'app.home',
    url: '/'
    controller: 'HomeController'
    controllerAs: 'home'
    templateUrl: 'sections/home/home.html'


.controller 'HomeController', ->
  @title = 'Home'

  return @