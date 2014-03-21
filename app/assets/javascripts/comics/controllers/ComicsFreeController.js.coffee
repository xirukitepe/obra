Obra.controller("ComicsFreeController", ($scope, $location, comicsData) ->
  $scope.data = comicsData.freeComicsPath.query()
)
