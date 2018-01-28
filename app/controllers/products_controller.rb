class ProductsController < ApplicationController
	def index
		@products = Product.all.reverse_order
	end

	private

	def product_params
	  params.require(:product).permit(:id, :product_name, :price, :gender, :size, :statuss, product_images_images: [])
	end

end
