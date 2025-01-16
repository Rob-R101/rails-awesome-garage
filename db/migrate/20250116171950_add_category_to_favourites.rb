class AddCategoryToFavourites < ActiveRecord::Migration[7.1]
  def change
    add_column :favourites, :category, :string
  end
end
