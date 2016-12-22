class AddUsecaseToAdresses < ActiveRecord::Migration[5.0]
  def change
  	add_column :adresses, :usecase_id, :integer
  end
end
