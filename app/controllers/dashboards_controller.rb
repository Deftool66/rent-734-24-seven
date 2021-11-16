class DashboardsController < ApplicationController

  def dashboard
    @offers = Offer.all
    @bookings = Booking.all
  end
end
