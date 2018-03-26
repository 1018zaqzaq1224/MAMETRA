class ArtImage < ApplicationRecord
	belongs_to :art, optional: true
	attachment :image
end
