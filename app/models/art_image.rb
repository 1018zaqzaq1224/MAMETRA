class ArtImage < ApplicationRecord
	belongs_to :art, optional: true, inverse_of: :art_images
	attachment :image
end
