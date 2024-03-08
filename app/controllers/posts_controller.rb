class PostsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    post = Post.create(content: params[:content], user_id: params[:user_id])
    render json: { post: post }
  end

  def index
    @posts = Post.all
    render json: @posts
  end
end
