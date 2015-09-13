angular.module "app.utils.auth", []

.service 'auth', ($http, $state, $localStorage, $interval) ->

  refreshToken: ->
    console.log 'uservalid', @userHasValidToken()
    return if not @userHasValidToken()
    $http.get 'http://localhost:2342/api/refresh-token'
    .then (response) =>

      @_saveToken response.data

    , (error) ->
      console.log error

  login: (credentials) ->
    $http.post 'http://localhost:2342/login', credentials
    .then (response) =>

      @_saveToken response.data

    , (error) ->
      console.log error

  logout: ->
    delete $localStorage.token

    @currentUser = null

    $state.go 'app.login'

  isLoggedIn: ->
    !!@currentUser


  userHasValidToken: ->
    decoded = @_getClaimsFromToken $localStorage.token
    console.log decoded, decoded.exp - +new Date / 1000, decoded.exp, +new Date
    decoded.exp - +new Date / 1000 > 0


  startRefreshTokenInterval: ->
    @refreshInterval = $interval =>
      @refreshToken()
    , 60 * 60 * 1000

  _saveToken: (token) ->
    $localStorage.token = token
    @currentUser = @_getClaimsFromToken token


  _urlBase64Decode: (str) ->
    output = str.replace('-', '+').replace('_', '/')

    if output.length % 4 == 2
      output += '=='
    else if output.length == 3
      output += '='

    window.atob output


  _getClaimsFromToken: (token) ->
    user = {}
    if typeof token != 'undefined'
      encoded = token.split('.')[1]
      user = JSON.parse @_urlBase64Decode(encoded)
    user

