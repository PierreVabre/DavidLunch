class AddPricesdetails < ActiveRecord::Migration[5.0]
  def change
  	add_column :adresses, :price_detail, :string
  end
end
