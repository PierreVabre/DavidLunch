class AddCategoryIdToAdresses < ActiveRecord::Migration[5.0]
  def change
  	add_column :adresses, :category_id, :integer
  	add_index :adresses, :category_id
  end
end
