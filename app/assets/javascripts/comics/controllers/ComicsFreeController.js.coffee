Obra.controller("ComicsFreeController", ($scope, $location, comicsData) ->
  $scope.data = comicsData.freeComicsPath.query()
  console.log($scope)
  # initializerManager.initialLoad($scope, comicsData)
)
