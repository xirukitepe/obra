class PortfoliosController < ApplicationController

  def index
    @comics = Comic.comics_of(params[:user_id])
    @user = User.find params[:user_id]

  end

  def list
  	@comics = Comic.comics_of(params[:user_id])
    @user = User.find params[:user_id]
    render json: {comics: @comics.map(&:custom_hash), user: @user.custom_hash}
  end


end