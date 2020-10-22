class Api::V1::AuthenticationController < ApplicationController
  before_action :authorized, only: %i[auto_login index]

  def create
    @user = User.new(user_params)
    if @user.save
      token = encode_token({ user_id: @user.id })
      render json: { status: 201, user: @user, token: token }
    else
      render json: { status: 401, errors: @user.errors.full_messages }
    end
  end

  def login
    @user = User.find_by(username: params[:user][:username])
    if @user&.authenticate(params[:user][:password])
      token = encode_token({ user_id: @user.id })
      render json: { user: @user, status: 200, token: token }
    else
      render json: { status: 401, error: 'Invalid Username or Password' }
    end
  end

  def auto_login
    render json: @user
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :email, :password_confirmation)
  end
end
