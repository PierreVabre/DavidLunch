class AddFieldsAdresses < ActiveRecord::Migration[5.0]
  def change
  	add_column :adresses, :description, :text
  	add_column :adresses, :price, :integer
  	add_column :adresses, :credit_card, :boolean
  	add_column :adresses, :time_to_go, :string
  end
end