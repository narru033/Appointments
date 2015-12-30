class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name, :null => false
      t.text :address
      t.string :city 
      t.string :state
      t.integer :zip
      t.string :school_received_degree_from
      t.integer :years_in_practice
      t.timestamps null: false
    end
  end
end
