# Description: Controller to create a new user
class UsersController < ApplicationController
  def create
    CreateUser.call
  end

  private def user_params
    params.permit(:email, :password, :username)
  end
end
