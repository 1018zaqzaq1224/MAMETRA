class Genre < ApplicationRecord
	has_many :items, inverse_of: :genre
	accepts_nested_attributes_for :items, allow_destroy: true
end
