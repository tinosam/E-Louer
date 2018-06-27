class Maison < ApplicationRecord
    has_many :photos
	belongs_to :agent
	accepts_nested_attributes_for :photos
end
