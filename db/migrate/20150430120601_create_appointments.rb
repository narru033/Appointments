class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :date_of_visit 
      t.string :pet
      t.string :customer 
      t.datetime :requires_reminder_of_appointment
      t.text :reason_for_visit
      t.belongs_to :dector, index: true
      t.belongs_to :customer, index: true
      t.timestamps null: false
    end
  end
end
