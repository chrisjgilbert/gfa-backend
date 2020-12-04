class ApiController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  private

  def not_found
    render json: { error: :not_found }, status: :not_found
  end

  def serialize_eatery(eateries)
    EaterySerializer.new(eateries).serialized_json
  end
  
end