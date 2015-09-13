angular.module 'app.utils.auth'

.factory "authInterceptor", ($q, $localStorage) ->
  request: (config) ->
    config.headers = config.headers || {}

    if $localStorage.token
      config.headers.Authorization = 'Bearer ' + $localStorage.token

    return config

  response: (response) ->
    if response.status == 401
      console.log 'unauthorized'

    return response || $q.when response

