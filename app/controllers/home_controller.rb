class HomeController < ApplicationController

  skip_before_filter :authenticate_user!

  def index
    @hots = Comic.hottest
    @new_realease = Comic.new_realease
    @updates = Comic.recent_updates
  end
end
