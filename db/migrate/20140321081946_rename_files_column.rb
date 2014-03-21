class RenameFilesColumn < ActiveRecord::Migration
  def change
    rename_column :users, :pic_file_type, :pic_content_type
    rename_column :comic_images, :comic_file_type, :comic_content_type
  end
end
