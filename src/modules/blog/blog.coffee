app = angular.module 'app.blog', []
app.config ($stateProvider, $urlRouterProvider) ->
  $urlRouterProvider.otherwise '/'

  $stateProvider
  .state 'blog',
    url: '/blog'
    controller: 'BlogController'
    controllerAs: 'blog'
    templateUrl: 'modules/blog/blog.html'


app.controller 'BlogController', ->
  blog = this

  return blog