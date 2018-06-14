class Cin < ApplicationRecord
    has_one :user
	has_one :agent
	mount_uploader :image, ImageUploader
end
