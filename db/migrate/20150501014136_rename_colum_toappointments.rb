class RenameColumToappointments < ActiveRecord::Migration
  def change
    rename_column :appointments, :dector_id, :doctor_id
    change_column :appointments, :date_of_visit, :date
    change_column :appointments, :customer, :integer
    change_column :appointments, :requires_reminder_of_appointment, :date
  end
end
