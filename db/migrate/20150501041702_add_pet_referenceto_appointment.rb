class AddPetReferencetoAppointment < ActiveRecord::Migration
  def change
  	add_reference :appointments, :pet, index: true
  	remove_column :appointments, :customer_id
  end
end
