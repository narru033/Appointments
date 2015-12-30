class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :pet
  validates :date_of_visit, :pet_name, :customer_id, :reason_for_visit,  presence: true
end
