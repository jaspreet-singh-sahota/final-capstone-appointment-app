class Api::V1::UsersController < ApplicationController
  before_action :authorized, only: %i[auto_login index]  
  
  def index
    @users = User.all
    render json: @users
  end  
  
  def user_jobs
    @user_jobs = logged_in_user.favorited_jobs
    render json: @user_jobs
  end  
  # REGISTER

  def create
    @user = User.create(user_params)
    if @user.valid?
      token = encode_token({ user_id: @user.id })
      render json: { user: @user, token: token }
    else
      render json: { error: @user.errors.full_messages[0] }
    end
  end
  
  # LOGGING IN
  def login
    @user = User.find_by(username: params[:username])    
    if @user&.authenticate(params[:password])
      token = encode_token({ user_id: @user.id })
      render json: { user: @user, token: token }
    else
      render json: { error: 'Invalid Username or Password' }
    end
  end  
  
  def auto_login
    render json: @user
  end  
  
  private  
  
  def user_params
    params.permit(:username, :password, :email)
  end
end

