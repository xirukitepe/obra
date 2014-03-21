class ModificationsOnComics < ActiveRecord::Migration
  def change
    rename_column :comic_images, :comic_id, :comic_chapter_id
    rename_column :comic_images, :order, :page_no
  end
end
