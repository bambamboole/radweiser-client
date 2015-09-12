angular.module "app"

.directive "rwNavigation", ->
  restrict: "E"
  templateUrl: "navigation/navigation.html"
  controller: "NavigationController"
  controllerAs: "nav"


.controller "NavigationController", ->
  nav = this
  nav.isMenuOpen = false

  nav.close = ->
    nav.isMenuOpen = false

  return nav