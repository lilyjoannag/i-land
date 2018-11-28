class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end
  def create
    @booking = Booking.new(booking_params)
    @island = Island.find(params[:island_id])
    @booking.island = @island
    authorize @booking
    if @booking.save
      redirect_to user_booking_path(@booking)
    else
      render "islands/show"
  end
  def show
    authorize @booking
  end
  def edit
    authorize @booking
  end
  def update
    authorize @booking
  end
  def destroy
    authorize @booking
    @booking.destroy
    redirect_to island_bookings_path(@island)
  end

  def booking_params
    params.require(:booking).permit(:island_id, :user_id, :start_at, :end_at)
  end
end

