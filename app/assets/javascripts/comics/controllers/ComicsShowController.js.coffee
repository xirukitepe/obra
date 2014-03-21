Obra.controller("ComicsShowController", ($scope, $location, $routeParams, comicsData) ->
  $scope.data = comicsData.comicPath($routeParams.id).query()
  console.log $scope
)
