angular.module "app"

.directive "rwNavigation", ->
  restrict: "E"
  templateUrl: "navigation/navigation.html"
  controller: "NavigationController"
  controllerAs: "nav"


.controller "NavigationController", ($mdSidenav) ->
  @close = ->
    $mdSidenav("left").close()
    .then ->
      console.log 'nav zu!'

  @toggle = ->
    $mdSidenav("left").toggle()


  return @