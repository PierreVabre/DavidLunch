class GifsToCategoriess < ActiveRecord::Migration[5.0]
  def change
  	add_column :categories, :gif, :string
  end
end
