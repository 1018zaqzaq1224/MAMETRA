class ProductsController < ApplicationController
	def index
		@products = Product.all
		@products = Product.page(params[:page]).reverse_order
		@products = if params[:search]
			@products = Product.search(params[:search]).page(params[:page]).reverse_order
		else
			Product.page(params[:page]).reverse_order
		end
	end

	def new
		@product = Product.new
		@product.product_images.build
	end

	def create
		@product = Product.new(product_params)
		@product.save
		redirect_to products_path
	end

	def edit
		@product = Product.find(params[:id])
	end

	def show
		@product = Product.find(params[:id])
	end



	private

	def product_params
	  params.require(:product).permit(:product_name, :price, :gender, :size, :state, product_images_images: [])
	end

end
