class AddPositionToGalleryImages < ActiveRecord::Migration
  def change
    add_column :gallery_images, :position, :integer, null: false, default: 0
  end
end
