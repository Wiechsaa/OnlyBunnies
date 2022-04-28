class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new post_params
    if @post.save
      redirect_to dashboard_path, flash: { success: "Post was succesfully created!" }
    else
      redirect_to :new, status: :unprocessable_entity, flash: { danger: "Something went wrong :c" }
    end
  end

  def show
  end

  private

  def post_params
    params.require(:post).permit(:image, :image_cache, :content)
  end
end