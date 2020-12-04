module Api
  class EateriesController < ApiController
    def index
      eateries = Eatery.all

      json = serialize_eatery(eateries)
      render json: json, status: :ok 
    end

    def show
      eatery = Eatery.find(params[:id])

      json = serialize_eatery(eatery)
      render json: json, status: :ok
    end
  end
end