class CreateComicChapters < ActiveRecord::Migration
  def change
    create_table :comic_chapters do |t|
      t.integer :comic_id
      t.string :title
      t.integer :chapter_no

      t.timestamps
    end
  end
end
