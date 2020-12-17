class ApiController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  STRING_SECRET = 'lol'

  def encode_token(payload)
    JWT.encode(payload, STRING_SECRET)
  end

  def auth_header
    request.headers['Authorization']
  end

  def decoded_token
    if auth_header
      token = auth_header.split(' ').last # 'Authorization: Bearer <token>'
      begin
        JWT.decode(token, STRING_SECRET, true, algorithm: 'HS256')
      rescue JWT::DecodeError
        nil
      end
    end
  end

  def logged_in_user
    if decoded_token
      user_id = decoded_token.first['user_id']
      @user = User.find(user_id)
    end
  end

  def authorized
    render json: { error: :unauthorized }, status: :unauthorized unless logged_in_user
  end

  private

  def not_found
    render json: { error: :not_found }, status: :not_found
  end
end
