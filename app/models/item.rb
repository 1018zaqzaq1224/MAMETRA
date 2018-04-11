class Item < ApplicationRecord
	belongs_to :genre , optional: true, inverse_of: :items
	belongs_to :snap , optional: true, inverse_of: :items

end
