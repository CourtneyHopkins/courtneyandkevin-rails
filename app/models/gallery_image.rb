class GalleryImage < ActiveRecord::Base
    validates :file, presence: true
    validates :gallery_id, presence: true

    belongs_to :gallery

    mount_uploader :file, GalleryImageUploader
end
