class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    user = User.create(username: params[:username], email: params[:email], first_name: params[:first_name], last_name: params[:last_name])
    render json: { user: user }
  end

  def index
    @users = User.all
    render json: @users
  end
end
