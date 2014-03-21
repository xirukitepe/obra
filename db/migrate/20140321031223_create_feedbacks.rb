class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.integer :comic_id
      t.integer :user_id
      t.string :type
      t.text :message
      t.integer :rating

      t.timestamps
    end
  end
end
