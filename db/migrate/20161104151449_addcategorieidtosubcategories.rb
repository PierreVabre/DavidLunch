class Addcategorieidtosubcategories < ActiveRecord::Migration[5.0]
  def change
  	add_column :subcategories, :category, :integer
  	add_index :subcategories, :category
  end
end