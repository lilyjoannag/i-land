class BookingsController < ApplicationController
  before_action :set_booking, only: [:create, :show, :edit, :update, :destroy]
  def index

  end
  def create
    authorize @booking
  end
  def show
    authorize @booking
  end
  def edit
    authorize @booking
  end
  def update
    authorize @booking
    @booking.update(params[:status])
  end
  def destroy
    authorize @booking
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
