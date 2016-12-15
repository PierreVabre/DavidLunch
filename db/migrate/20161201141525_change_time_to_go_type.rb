class ChangeTimeToGoType < ActiveRecord::Migration[5.0]
	add_column :adresses, :distance, :integer
end
