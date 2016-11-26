class AddsubcategoryToAdresses < ActiveRecord::Migration[5.0]
  def change
  	add_column :adresses, :subcategory_id, :integer
  end
end
