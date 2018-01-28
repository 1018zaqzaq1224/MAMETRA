class ArtImage < ApplicationRecord
	belongs_to :art
	attachment :image
end
