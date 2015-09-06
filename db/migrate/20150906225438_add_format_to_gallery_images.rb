class AddFormatToGalleryImages < ActiveRecord::Migration
  def change
    add_column :gallery_images, :format, :string, null: false, default: 'full'
  end
end
