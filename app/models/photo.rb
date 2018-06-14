class Photo < ApplicationRecord
    belongs_to :trano
	mount_uploader :image, ImageUploader
end
