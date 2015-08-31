class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :title, null: false, unique: true
      t.text :body
      t.string :slug, null: false, unique: true

      t.timestamps null: false
    end
  end
end
