class BookingsController < ApplicationController
  before_action :set_params, only: [:show]

  def show
  end

  def new
    @booking = Booking.new
    @offer = Offer.find(params[:offer_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @offer = Offer.find(params[:offer_id])
    @booking.offer = @offer
    if @booking.save
      redirect_to dashboard_path(dashboard)
    else
      render :new
    end
  end

  private

  def set_params
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_time, :end_time)
  end
end
