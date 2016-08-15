class GalleryImagesController < ApplicationController
  before_action :set_gallery_image, only: [:edit, :update, :destroy]
  before_action :require_admin

  def new
    @gallery_image = GalleryImage.new
  end

  def edit

  end

  def create
    @gallery_image = GalleryImage.new(gallery_image_params)

    if @gallery_image.save
      redirect_to galleries_path, notice: 'Gallery image was successfully created.'
    else
      render :new
    end
  end

  def update
    if @gallery_image.update(gallery_image_params)
      redirect_to edit_gallery_image_path(@gallery_image), notice: 'Gallery image was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @gallery_image.destroy
    redirect_to gallery_images_url, notice: 'Gallery image was successfully destroyed.'
  end

  private
    def set_gallery_image
      @gallery_image = GalleryImage.find(params[:id])
    end

    def gallery_image_params
      params.require(:gallery_image).permit(:file, :gallery_id, :position)
    end
end
