angular.module "app.utils.auth", []

.service 'auth', ($http, $state, $localStorage) ->

  currentUser: null

  login: (credentials) ->
    $http.post 'http://localhost:2342/login', credentials
    .then (response) =>
      $localStorage.token = response.data.token
      console.log response.data
      @currentUser = response.data.user
    , (error) ->
      console.log error

  logout: ->
    $localStorage.token = null
    @currentUser = null
    $state.go 'app.home'

  isLoggedIn: ->
    !!@currentUser