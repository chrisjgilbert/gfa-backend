module Api
  class ReviewsController < ApiController
    def index
      eateries = Review.where(eatery_id: eatery_id)
      json = ReviewSerializer.new(eateries).serialized_json
      render json: json, status: :ok
    end

    private

    def eatery_id
      params[:eatery_id]
    end
  end
end
