class PostImagesController < ApplicationController
  before_action :set_post_image, only: [:show, :edit, :update, :destroy]

  # GET /post_images
  def index
    @post_images = PostImage.all
  end

  # GET /post_images/1
  def show
  end

  # GET /post_images/new
  def new
    @post_image = PostImage.new
  end

  # GET /post_images/1/edit
  def edit
  end

  # POST /post_images
  def create
    @post_image = PostImage.new(post_image_params)

    if @post_image.save
      redirect_to @post_image, notice: 'Post image was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /post_images/1
  def update
    if @post_image.update(post_image_params)
      redirect_to @post_image, notice: 'Post image was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /post_images/1
  def destroy
    @post_image.destroy
    redirect_to post_images_url, notice: 'Post image was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_image
      @post_image = PostImage.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def post_image_params
      params.require(:post_image).permit(:file)
    end
end
