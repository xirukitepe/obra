class PortfoliosController < ApplicationController

  def index
    @comics = Comic.comics_of(current_user.id)
  end

end