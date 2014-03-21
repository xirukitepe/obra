class Api::ComicsController < ApplicationController
  skip_before_filter :authenticate_user!

  def show
    comic = Comic.find params[:id]
    render json: { comic: comic.custom_hash }
  end

  def create

  end

  def destroy

  end

  def free
    comics = Comic.all
    render json: { comics: comics.map(&:custom_hash)  }
  end
end