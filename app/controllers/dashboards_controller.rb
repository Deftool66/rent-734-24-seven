class DashboardsController < ApplicationController

  def dashboard
    @offers = current_user.offers
    @bookings = Booking.all
    @my_requests = current_user.requests_as_owner
  end
end
