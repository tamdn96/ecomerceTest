class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def index
    @posts = Post.all
  end

  def create
    post = Post.new(post_params)
    if post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def remove_all
    Post.delete_all
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:user, :content, :time)
  end
end
