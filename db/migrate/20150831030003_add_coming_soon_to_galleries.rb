class AddComingSoonToGalleries < ActiveRecord::Migration
  def change
    add_column :galleries, :coming_soon, :boolean, null: false, default: false
  end
end
