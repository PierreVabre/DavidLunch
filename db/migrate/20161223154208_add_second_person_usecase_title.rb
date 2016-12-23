class AddSecondPersonUsecaseTitle < ActiveRecord::Migration[5.0]
  def change
  	add_column :usecases, :secondTitle, :string
  end
end
