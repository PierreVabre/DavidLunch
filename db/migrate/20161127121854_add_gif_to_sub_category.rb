class AddGifToSubCategory < ActiveRecord::Migration[5.0]
  def change
  	add_column :subcategories, :gif, :string
  end
end
