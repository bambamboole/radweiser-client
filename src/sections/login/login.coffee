angular.module 'app.login', []

.config ($stateProvider) ->

  $stateProvider
  .state 'app.login',
    url: '/login'
    controller: 'LoginController'
    controllerAs: 'login'
    templateUrl: 'sections/login/login.html'


.controller 'LoginController', ($scope, $http, auth) ->
  @title = 'login'

  console.log auth
  @isLoggedIn = auth.isLoggedIn()

  @username = 'manu'
  @password = 'password'

  @submit = ->
    credentials =
      name: @username
      password: @password

    auth.login(credentials)

  @getUsers = ->
    $http.get 'http://localhost:2342/api/users'
    .then (response) ->
      console.log response.data

  @logout = ->
    auth.logout()

  $scope.$watch ->
    auth.isLoggedIn()
  , (newVal, oldVal) =>
    console.log newVal, oldVal
    @isLoggedIn = newVal

  return @