class HomeController < ApplicationController

  skip_before_filter :authenticate_user!

  def index
    start_date = Date.today.beginning_of_week
    end_date = Date.today.end_of_week
    def_com = Comic.limit(10)
    @hots = Comic.hottest(20)
    @new_realease = Comic.new_realease(start_date,end_date)
    @updates = Comic.recent_updates(start_date,end_date)
    @hots = def_com if @hots.empty?
    @new_realease = def_com if @new_realease.empty?
    @updates = def_com if @updates.empty?
  end

  def home
    start_date = Date.today.beginning_of_week
    end_date = Date.today.end_of_week
    def_com = Comic.limit(10)
    @hots = Comic.hottest(20)
    @new_realease = Comic.new_realease(start_date,end_date)
    @updates = Comic.recent_updates(start_date,end_date)
    @hots = def_com if @hots.empty?
    @new_realease = def_com if @new_realease.empty?
    @updates = def_com if @updates.empty?
  end
end
