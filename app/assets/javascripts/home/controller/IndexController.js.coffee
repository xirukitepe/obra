Obra.controller("IndexController", ($scope, $location, homeData) ->
  $scope.hello = "haha"
  homeData.homePath().query (result) ->
  	$scope.hots = result.hots
)