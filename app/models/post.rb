class Post < ActiveRecord::Base
  include Sluggable

  validates :title, presence: true, uniqueness: true
  validates :slug, presence: true, uniqueness: true

  before_validation :set_slug

  mount_uploader :featured_image, PostFeaturedImageUploader
end
