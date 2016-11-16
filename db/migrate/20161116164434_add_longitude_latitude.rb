class AddLongitudeLatitude < ActiveRecord::Migration[5.0]
  def change
  	add_column :adresses, :latitude, :string
  	add_column :adresses, :longitude, :string
  end
end
