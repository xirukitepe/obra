class CreateComicImages < ActiveRecord::Migration
  def change
    create_table :comic_images do |t|
      t.integer :comic_id
      t.string :comic_file_name
      t.string :comic_file_type
      t.integer :comic_file_size
      t.boolean :cover_photo
      t.integer :order

      t.timestamps
    end
  end
end
