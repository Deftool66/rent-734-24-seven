class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :destroy, :update, :edit]
  skip_before_action :authenticate_user!, only: :index
  def index
    @offers = Offer.all
  end

  def show
  end

  def edit
  end

  def update
    @offer.update(offer_params)
    redirect_to dashboard_path
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def destroy
    @offer.destroy
    redirect_to dashboard_path
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:title, :description, :category, :start_time, :end_time)
  end
end
