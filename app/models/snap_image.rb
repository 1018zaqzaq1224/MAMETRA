class SnapImage < ApplicationRecord
	belongs_to :snap, optional: true, inverse_of: :snap_images
	attachment :image
end
