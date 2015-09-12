app.controller 'NavigationController', ->
  nav = this
  nav.isMenuOpen = false

  nav.close = ->
    nav.isMenuOpen = false

  return nav