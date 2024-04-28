class AuthController < ApplicationController
  def login
    @user = User.find_by(username: auth_params[:username])

    if @user && @user.authenticate(auth_params[:password])
      render json: { access_token: encode_token(user_id: @user.id) }, status: :ok
    else
      render json: { errors: 'Invalid username or password' }, status: :unauthorized
    end
  end

  private def auth_params
    params.permit(:username, :password)
  end
end
