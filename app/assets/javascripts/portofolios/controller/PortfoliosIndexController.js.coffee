Obra.controller("PortfoliosIndexController", ($scope, $location, $routeParams, portfolioData) ->
  portfolioData.indexPath($routeParams.id).query (result) ->
    $scope.comics = result.comics
    $scope.user = result.user
    console.log('Photo: '+result.user.photo)
)