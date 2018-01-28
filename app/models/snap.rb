class Snap < ApplicationRecord
	has_many :snap_images, dependent: :destroy
	has_many :items, dependent: :destroy
	accepts_attachments_for :snap_images, attachment: :image
	accepts_nested_attributes_for :items, allow_destroy: true

	validates :snap_name, presence: true
end