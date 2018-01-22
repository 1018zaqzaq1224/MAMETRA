class Item < ApplicationRecord
	has_many :genre
	belogs_to :snap
end
