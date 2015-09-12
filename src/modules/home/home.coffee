app = angular.module 'app.home', []
app.config ($stateProvider, $urlRouterProvider) ->
  $urlRouterProvider.otherwise '/'

  $stateProvider
  .state 'home',
    url: '/'
    controller: 'HomeController'
    templateUrl: 'modules/home/home.html'


app.controller 'HomeController', ($scope) ->
  $scope.title = 'Home'