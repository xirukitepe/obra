class ComicsController < ApplicationController
  skip_before_filter :authenticate_user!, only: [:show]
  before_filter :get_comic, except: [:new,:create]


  def show

  end

  def new
    @comic = Comic.new
  end

  def create
    @comic = Comic.new(comic_params)
    if @comic.save
      if params[:comic][:comic_chapters_attributes].present?
        d = params[:comic][:comic_chapters_attributes].first
        files = d[1][:comic_image]
        i = 1
        chap_id = @comic.comic_chapters.first
        files.each do |img|
          cmg = ComicImage.new
          cmg.comic_chapter = chap_id
          cmg.page_no = i
          cmg.comic = img
          cmg.cover_photo = true if i.eql?(1)
          cmg.save
          i += 1
        end
      end
    else
      render 'new'
    end
    redirect_to edit_comic_path(@comic)
  end

  def edit
  end

  def update
    @comic.update_attributes!(comic_params)
    redirect_to user_portfolios_path(@comic.user)
  end


  def destroy
    @comic.destroy
  end

  private

  def get_comic
    @comic = Comic.find params[:id]
  end

  def comic_params
    params[:comic][:category] = params[:comic][:category].join(',')
    params.require(:comic).permit(:title, :synopsis, :downloadable, :user_id, :date, :category, comic_chapters_attributes: [:id, :title, :_destroy])
  end

end