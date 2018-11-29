class IslandsController < ApplicationController
  def index

    if params[:query].present? || params[:query_area].present?
      if params[:query][:distance].present? && params[:query_area].present?
        @islands = policy_scope(Island.near(params[:query_area], params[:query][:distance]))
      elsif params[:query_area].present?
        @islands = policy_scope(Island.near(params[:query_area], 100))
      else
        @islands = policy_scope(Island)
      end
      min_price = params[:query][:min_price].present? ? params[:query][:min_price].to_i : 0
      max_price = params[:query][:max_price].present? ? params[:query][:max_price].to_i : 1000000
      @islands = @islands.select do |island|
        island.price_per_night > min_price && island.price_per_night < max_price
      end

      if params[:query][:guest].present?
        number_of_guests_query = params[:query][:guest].to_i
        @islands = @islands.select do |island|
          island.number_of_guests > number_of_guests_query - 5 && island.number_of_guests < number_of_guests_query + 5
        end

      end
      @markers = @islands.map do |island|
           {
             lng: island.longitude,
             lat: island.latitude,
          }
      end
    else
      @islands_pundit = policy_scope(Island)
      @islands = @islands_pundit.where.not(latitude: nil, longitude: nil)
      @markers = @islands.map do |island|
           {
             lng: island.longitude,
             lat: island.latitude,

             }
      end

    end
  end

  def create
    @island = Island.new(island_params)
    authorize @island
    @island.user = current_user
    @island.save!
    redirect_to edit_island_path(@island)
    # else
    #   render :new
    # end
  end

  def show
    @island = Island.find(params[:id])
    @markers = [@island].map do |island|
         {
           lng: island.longitude,
           lat: island.latitude,
           infoWindow: render_to_string(partial: "infowindow", locals: { island: island })
         }
    end
    authorize @island
  end

  def edit
    @island = Island.find(params[:id])
    @markers = [@island].map do |island|
         {
           lng: island.longitude,
           lat: island.latitude,
           infoWindow: render_to_string(partial: "infowindow", locals: { island: island })
         }
    end
    authorize @island
  end

  def update
    @island = Island.find(params[:id])
    authorize @island
    @island.update(island_params)
    # @island.name = island_params[:name]
    # @island.number_of_guests = island_params[:number_of_guests]
    # @island.price_per_night = island_params[:price_per_night]
    # @island.description = island_params[:description]
    # @island.photos = island_params[:photos]
    # @island.save
    redirect_to island_path(@island)
  end

  def destroy
    @island = Island.find(params[:id])
    authorize @island
    @island.destroy
  end

  private

  def island_params
    params.require(:island).permit(:name, :address, :number_of_guests, :description, :price_per_night, :photo_1, :photo_2, :photo_3)
  end
end
