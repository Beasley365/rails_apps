class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.float :lattitude
      t.float :longitude
      t.string :city
      t.integer :weather

      t.timestamps null: false
    end
  end
end
