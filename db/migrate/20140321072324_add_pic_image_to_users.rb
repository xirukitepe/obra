class AddPicImageToUsers < ActiveRecord::Migration
  def change
    add_column :users, :pic_file_name, :string
    add_column :users, :pic_file_type, :string
    add_column :users, :pic_file_size, :string
  end
end
