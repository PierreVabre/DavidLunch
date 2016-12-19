class CreateWelcomegifs < ActiveRecord::Migration[5.0]
  def change
    create_table :welcomegifs do |t|
      t.string :gif

      t.timestamps
    end
  end
end
