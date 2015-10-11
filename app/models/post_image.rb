class PostImage < ActiveRecord::Base
  validates :file, presence: true

  mount_uploader :file, PostImageUploader
end
