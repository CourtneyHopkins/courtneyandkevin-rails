class GalleryImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  if Rails.env.development? || Rails.env.test?
    storage :file
  else
    storage :fog
  end

  def store_dir
    "uploads/#{Rails.env}/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :full do
    process resize_to_fill: [1000,800]
  end

  version :half do
    process resize_to_fill: [500,800]
  end
end
