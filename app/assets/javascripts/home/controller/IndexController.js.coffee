Obra.controller("IndexController", ($scope, $location, homeData) ->
  $scope.hello = "haha"
  homeData.homePath().query (result) ->
    $scope.hot = result.hot
    $scope.new_releases = result.new_release
    $scope.recently_updated = result.recently_updated
)