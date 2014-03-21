class HomeController < ApplicationController

  skip_before_filter :authenticate_user!

  def index
    start_date = Date.today.beginning_of_week
    end_date = Date.today.beginning_of_week
    @hots = Comic.hottest(20)
    @new_realease = Comic.new_realease(start_date,end_date)
    @updates = Comic.recent_updates(start_date,end_date)
  end
end
