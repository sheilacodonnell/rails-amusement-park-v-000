class AttractionsController < ApplicationController

	def index
		@attractions = Attraction.all
	end

	def show
		@attraction = Attraction.find(params[:id])
		@user = User.find_by(id: current_user)
	end

	def new
		 @attraction = Attraction.new
		end
	def create
		@attraction = Attraction.new(attraction_params)
   		@attraction.save
    	redirect_to attraction_path(@attraction)
   end

    def edit
    	@attraction = Attraction.find(params[:id])
  	end

  	  def update
    @attraction = Attraction.find(params[:id])
    if @attraction.update(attraction_params)
      redirect_to @attraction
    else
      render :edit
    end
  end

  def show
    @attraction = Attraction.find(params[:id])
    @ride = Ride.new
  end

   private

   def attraction_params
   	params.require(:attraction).permit(:name, :min_height, :happiness_rating, :nausea_rating, :tickets)
   end
end