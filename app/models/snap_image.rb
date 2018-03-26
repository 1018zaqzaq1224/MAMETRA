class SnapImage < ApplicationRecord
	belongs_to :snap, optional: true
	attachment :image
end