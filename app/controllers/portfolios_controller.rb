class PortfoliosController < ApplicationController

  def index
    @comics = Comic.comics_of(params[:user_id])
    @user = User.find params[:user_id]

  end

  def list
  	@comics = Comic.comics_of(params[:user_id])
    @user = User.find params[:user_id]

    Rails.logger.info "---------------"
    Rails.logger.info @user.custom_hash
    Rails.logger.info "---------------"
    render json: {comics: @comics.map(&:custom_hash), user: @user.custom_hash}
  end


end