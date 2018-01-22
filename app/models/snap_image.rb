class SnapImage < ApplicationRecord
	belongs_to :snap
	attachment :image
end