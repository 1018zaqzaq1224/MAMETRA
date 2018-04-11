class Art < ApplicationRecord

	extend Refile::Attachment
	attr_accessor :art_image_id
	has_many :art_images, inverse_of: :art, dependent: :destroy
	accepts_attachments_for :art_images, attachment: :image

	validates :event_name, presence: true
	validates :artist_name, presence: true
	validates :start_date, presence: true
	validates :end_date, presence: true
	validates :event_info, presence: true
end
