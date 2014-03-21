Obra.factory 'portfolioData', ($resource) ->
	indexPath: (id)->
    $resource "/users/:user_id/portfolios/list.json", {user_id: id},
      query: 
        method: "GET"
        isArray: false