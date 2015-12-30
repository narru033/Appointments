class RenameColumntoappointments < ActiveRecord::Migration
  def change
  	rename_column :appointments, :pet, :pet_name
  	rename_column :appointments, :customer, :customer_id
  end
end
