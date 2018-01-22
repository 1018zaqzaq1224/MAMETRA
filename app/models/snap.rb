class Snap < ApplicationRecord
	has_many :snap_images, :item, dependent: :destroy
	accepts_attachments_for :snap_images, attachment: :image
end