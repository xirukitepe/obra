class AddCategoryToComics < ActiveRecord::Migration
  def change
    add_column :comics, :category, :string
  end
end
