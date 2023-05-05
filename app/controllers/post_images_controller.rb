class PostImagesController < ApplicationController

  def new
    @post_image = PostImage.new
  end

  def create
    @post_image = PostImage.new(post_image_prame)
    @post_image.user_id = current_user.id
    @post_image.save
    redirect_to post_image_path
  end

  def index
  end

  def show
  end


  private

  def post_image_params
    parame.require(:post_image).permit(:shop.name, :image, :caption)
  end
end
