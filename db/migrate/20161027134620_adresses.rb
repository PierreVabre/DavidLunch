class Adresses < ActiveRecord::Migration[5.0]
  def change
  	create_table :adresses
  	add_column :adresses, :title, :string
  end
end
