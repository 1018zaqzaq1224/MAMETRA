class Product < ApplicationRecord
	has_many :product_images, dependent: :destroy
	accepts_attachments_for :product_images, attachment: :image

	enum statuss: { 販売中: 0, SOLDOUT: 1 }

	scope :get_by_gender, ->(gender) {
	where(gender: gender)
	}

	validates :product_name, presence: true
	validates :price, presence: true
	validates :gender, presence: true
	validates :size, presence: true

  def toggle_statuss!
    if 販売中?
      SOLDOUT!
    else
      販売中!
    end
  end
end
