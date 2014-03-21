class PortfoliosController < ApplicationController

  def index
    @comics = Comic.comics_of(params[:user_id])
    @user = User.find params[:user_id]
  end

end