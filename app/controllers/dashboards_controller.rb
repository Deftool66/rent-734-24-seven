class DashboardsController < ApplicationController
  
  def dashboard
    @my_offers = current_user.offers
    @my_bookings = current_user.bookings
  end
end
