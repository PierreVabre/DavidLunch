class CreateUsecases < ActiveRecord::Migration[5.0]
  def change
    create_table :usecases do |t|
      t.string :title
      t.string :gif

      t.timestamps
    end
  end
end
