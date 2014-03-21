class AddDownloadOptToComics < ActiveRecord::Migration
  def change
    add_column :comics, :downloadable, :boolean
  end
end
