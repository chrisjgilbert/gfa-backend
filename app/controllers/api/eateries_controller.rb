module Api
  class EateriesController < ApiController
    def index
      eateries = Eatery.all

      json = serialize_eateries(eateries)
      render json: json, status: :ok 
    end

    def show
      eatery = Eatery.find(params[:id])

      json = serialize_eateries(eatery)
      render json: json, status: :ok
    end
  end
end