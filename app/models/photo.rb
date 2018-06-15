class Photo < ApplicationRecord
    belongs_to :maison
	mount_uploader :image, ImageUploader
end
