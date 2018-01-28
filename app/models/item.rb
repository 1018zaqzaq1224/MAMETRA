class Item < ApplicationRecord
	belongs_to :genre
	belongs_to :snap

	validates :item_name, presence: true
end
