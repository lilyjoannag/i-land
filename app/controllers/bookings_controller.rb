class BookingsController < ApplicationController
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
  end
  def destroy
    authorize @booking
  end
end
