class ComicsController < ApplicationController
  skip_before_filter :authenticate_user!, only: [:show]

  def show
    @comic = Comic.find params[:id]
  end

  def create

  end

  def destroy

  end

end