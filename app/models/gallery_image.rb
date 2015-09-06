class GalleryImage < ActiveRecord::Base
    validates :file, presence: true
    validates :gallery_id, presence: true
    validates :format, presence: true
    validates :format, inclusion: { in: ['half', 'full'] }

    belongs_to :gallery

    mount_uploader :file, GalleryImageUploader
end
