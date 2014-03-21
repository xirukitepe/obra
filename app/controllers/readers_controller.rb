class ReadersController < ApplicationController
	skip_before_filter :authenticate_user!
	layout "home"
	def index
    @comics = Comic.find(params[:comic_id]).comic_chapters.first.comic_images
	end
end
