class CreateGalleryImages < ActiveRecord::Migration
  def change
    create_table :gallery_images do |t|
      t.string :file
      t.integer :gallery_id, null: false
      t.timestamps null: false
    end
  end
end
