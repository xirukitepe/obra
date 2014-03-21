class RenamePageNoOfComicImages < ActiveRecord::Migration
  def change
    rename_column :comic_images, :page_no, :position
  end
end
