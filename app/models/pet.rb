class Pet < ActiveRecord::Base
	validates :name_of_pet, :breed, :age, :weight, :date_of_last_visit, presence: true
	validates_length_of :name_of_pet, :breed, :maximum => 35
	has_many :appointments, dependent: :destroy
  	has_many :doctors, through: :appointments
end
