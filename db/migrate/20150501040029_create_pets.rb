class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name_of_pet
      t.string :type_of_pet
      t.text :breed
      t.integer :age
      t.float :weight
      t.date :date_of_last_visit
      t.integer :customer_id
      t.timestamps null: false
    end
  end
end
