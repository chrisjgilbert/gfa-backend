module Api
  class EateriesController < ApiController
    def index
      # eateries = Eatery.near('SW11 6LW', 50, units: :km)
      eateries = Eatery.all
      json = EaterySerializer.new(eateries).serialized_json
      render json: json, status: :ok
    end
    
    def show
      eatery = Eatery.find(params[:id])
      json = EaterySerializer.new(eatery).serialized_json
      render json: json, status: :ok
    end
  end
end
