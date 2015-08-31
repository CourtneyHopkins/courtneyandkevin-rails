class GalleryImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  
  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :full do
    process resize_to_fill: [1000,800]
  end

  version :half do
    process resize_to_fill: [500,800]
  end
end
