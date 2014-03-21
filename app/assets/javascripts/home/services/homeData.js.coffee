Obra.factory 'homeData', ($resource) ->
	homePath: ->
    $resource "/home/comics.json", {},
      query: 
        merhod: "GET"
        isArray: false