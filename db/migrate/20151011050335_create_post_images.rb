class CreatePostImages < ActiveRecord::Migration
  def change
    create_table :post_images do |t|
      t.string :file, null: false

      t.timestamps null: false
    end
  end
end
