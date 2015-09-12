angular.module 'app.blog', []

.config ($stateProvider) ->

  $stateProvider
  .state 'app.blog',
    url: '/blog'
    controller: 'BlogController'
    controllerAs: 'blog'
    templateUrl: 'sections/blog/blog.html'


.controller 'BlogController', ->
  @title = 'Blog'

  return @