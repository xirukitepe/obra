class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :birthday, :date
    add_column :users, :username, :string
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
  end
end
