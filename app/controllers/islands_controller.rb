class IslandsController < ApplicationController
  def index
    @islands = Island.all
  end

  def create
    @island = Island.new(island_params)
    @island.user = current_user
    @island.save!
    redirect_to edit_island_path(@island)
    # else
    #   render :new
    # end
  end

  def show
    @island = Island.find(params[:id])
  end

  def edit
    @island = Island.find(params[:id])
  end

  def update
    @island = Island.find(params[:id])
    @island.update(island_params)
    # @island.name = island_params[:name]
    # @island.number_of_guests = island_params[:number_of_guests]
    # @island.price_per_night = island_params[:price_per_night]
    # @island.description = island_params[:description]
    # @island.photos = island_params[:photos]
    # @island.save
    redirect_to island_path(@island)
  end

  private

  def island_params
    params.require(:island).permit(:name, :address, :number_of_guests, :description, :price_per_night, :photo_1, :photo_2, :photo_3)
  end
end
