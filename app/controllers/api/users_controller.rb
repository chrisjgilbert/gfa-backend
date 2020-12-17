module Api
  class UsersController < ApiController
    def create
      user = User.new(user_params)
      if user.save
        token = encode_token({user_id: user.id}) # must be an object
        render json: { 
          user: {
            id: user.id,
            username: user.username
          },
          token: token 
        }, status: :created
      else
        render json: { error: 'Invalid username or password' }, status: :unprocessable_entity
      end
    end

    def login
      user = User.find_by_username(params[:username])
      if user && user.authenticate(params[:password])
        token = encode_token({user_id: user.id}) # must be an object
        render json: { userId: user.id, token: token }, status: :ok
      else
        render json: { error: 'Invalid username or password' }, status: :unprocessable_entity
      end
    end

    private
  
    def user_params
      params.permit(:username, :password)
    end
  end
end