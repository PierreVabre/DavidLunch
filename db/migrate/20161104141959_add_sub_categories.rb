class AddSubCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :subcategories do |t|
      t.string :title
      t.text :description
      t.integer :category_id

      t.timestamps
    end
  end
end
