class Snap < ApplicationRecord
	 attr_accessor :genre_id
	 attr_accessor :item_name
	has_many :items, inverse_of: :snap, dependent: :destroy
        accepts_nested_attributes_for :items, allow_destroy: true

	extend Refile::Attachment
	attr_accessor :snap_image_id
	has_many :snap_images, inverse_of: :snap, dependent: :destroy
	accepts_attachments_for :snap_images, attachment: :image

end
