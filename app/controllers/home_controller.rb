class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
  	if current_user.role == "customer"
  		@appointment = Appointment.where(:customer_id=> current_user.id).first 
  	end
  end
  	
end
