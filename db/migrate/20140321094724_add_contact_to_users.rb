class AddContactToUsers < ActiveRecord::Migration
  def change
    add_column :users, :contact_no, :string
  end
end
