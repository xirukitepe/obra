Obra.factory 'homeData', ($resource) ->
	homePath: ->
    $resource "/home/comics.json", {},
      query: 
        method: "GET"
        isArray: false