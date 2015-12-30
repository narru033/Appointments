class Doctor < ActiveRecord::Base
	validates :name, presence: true
	validates_length_of :name, :maximum => 35
	validates_format_of  :zip, :with=> /\A(\d{5})\z/, allow_blank: true
	validates :years_in_practice,:numericality => { :greater_than_or_equal_to => 1, :less_than_or_equal_to => 100 }, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 100 },  allow_blank: true
	has_many :appointments, dependent: :destroy
    has_many :pets, through: :appointments
end
