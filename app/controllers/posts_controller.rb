class PostsController < ApplicationController
  def index
    render json: Post.all
  end

  def new
    render json: Post.new
  end

  def create
    render json: Post.create
  end


end
