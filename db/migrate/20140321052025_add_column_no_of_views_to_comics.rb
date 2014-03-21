class AddColumnNoOfViewsToComics < ActiveRecord::Migration
  def change
    add_column :comics, :no_likes, :integer
    add_column :comics, :update_chapter, :integer
  end
end
