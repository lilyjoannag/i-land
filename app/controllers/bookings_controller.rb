class BookingsController < ApplicationController
  before_action :set_booking, only: [ :show, :edit, :update, :destroy]
  def index
    @bookings = policy_scope(Booking)
  end
  def create
    @booking = Booking.new(booking_params)
    @island = Island.find(params[:island_id])
    @booking.user = current_user
    @booking.island = @island
    @booking.status = "pending"
    authorize @booking
    if @booking.save!
      redirect_to user_booking_path(current_user, @booking)
    else
      redirect_to island_path(@island)
    end
  end
  def show
    authorize @booking
  end
  def edit
    authorize @booking
  end
  def update
    authorize @booking
    @booking.update(status: params[:booking][:status])
    redirect_to user_bookings_path(current_user)
  end
  def destroy
    authorize @booking
    @booking.destroy
    redirect_to island_bookings_path(@island)
  end


  private
  def booking_params
    params.require(:booking).permit(:island_id, :user_id, :start_at, :end_at)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end

