class BookingsController < ApplicationController
  before_action :set_params, only: [:show, :update]

  def index
    @bookings = Booking.all
    @booking = Booking.find(params[:booking]) if params[:booking]
    booking_status if params[:name]
  end

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
    @booking.user = current_user
    if @booking.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def booking_status
    status = params[:name]
    if status == 'accept'
      @booking.status = "Accepted"
    elsif status == 'decline'
      @booking.status = 'Declined'
    end
    @booking.save
  end

  def update
  end

  private

  def set_params
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :status)
  end
end
