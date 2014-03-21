Obra.controller("PortfoliosIndexController", ($scope, $window, $location, $routeParams, portfolioData) ->
  portfolioData.indexPath($routeParams.id).query (result) ->
    $scope.comics = result.comics
    $scope.user = result.user

   $scope.newComic = ->
      $window.location.href = '/comics/new'
      
)