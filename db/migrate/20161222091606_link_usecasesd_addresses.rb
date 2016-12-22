class LinkUsecasesdAddresses < ActiveRecord::Migration[5.0]
  def change 
    create_table :adresses_usecases, id: false do |t|
      t.belongs_to :adresse, index: true
      t.belongs_to :usecase, index: true
    end
  end
end


