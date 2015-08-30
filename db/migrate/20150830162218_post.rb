class Post < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      # t.string(:title, {unique: true, null: false})
      t.string :title, unique: true, null: false
      t.text :body
      t.string :slug, unique: true, null: false
      t.timestamps
    end
  end
end
