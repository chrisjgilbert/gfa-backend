module Api
  class EateriesController < ApiController
    def index
      # eateries = Eatery.near('SW11 6LW', 50, units: :km)
      if cuisine_filter
        eateries = Eatery.joins(:cuisines).where(cuisines: { name: cuisine_filter })
      else
        eateries = Eatery.all
      end

      json = EaterySerializer.new(eateries).serialized_json
      render json: json, status: :ok
    end
    
    def show
      eatery = Eatery.find(params[:id])
      json = EaterySerializer.new(eatery).serialized_json
      render json: json, status: :ok
    end

    def cuisine_filter
      params[:cuisine]
    end
  end
end
