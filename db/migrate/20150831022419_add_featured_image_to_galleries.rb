class AddFeaturedImageToGalleries < ActiveRecord::Migration
  def change
    add_column :galleries, :featured_image, :string
  end
end
