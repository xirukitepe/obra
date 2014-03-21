class CreateComics < ActiveRecord::Migration
  def change
    create_table :comics do |t|
      t.integer :user_id
      t.date :date
      t.string :title
      t.text :synopsis

      t.timestamps
    end
  end
end
