Obra.factory 'comicsData', ($resource) ->
  freeComicsPath:
    $resource "/api/comics/free.json", {},
        query:
          method: "GET"
          isArray: false

  comicPath: (id) ->
    $resource "/api/comics/:id.json", { id: id },
        query:
          method: "GET"
          isArray: false
