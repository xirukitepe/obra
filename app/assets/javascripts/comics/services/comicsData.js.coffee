Obra.factory 'comicsData', ($resource) ->
  freeComicsPath:
    $resource "/api/comics/free.json", {},
        query:
          method: "GET"
          isArray: false