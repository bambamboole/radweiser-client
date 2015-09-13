angular.module 'app.login', []

.config ($stateProvider) ->

  $stateProvider
  .state 'app.login',
    url: '/login'
    controller: 'LoginController'
    controllerAs: 'login'
    templateUrl: 'sections/login/login.html'


.controller 'LoginController', ($http, auth) ->
  @title = 'login'

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

  @logout = auth.logout
  return @