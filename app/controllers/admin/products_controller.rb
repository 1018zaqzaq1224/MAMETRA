class Admin::ProductsController < ApplicationController

	layout 'application.html 2'
	before_action :authenticate_admin!
	before_action :params_product, only:[:index, :update,  :edit, :destroy]

	def index
		@products = Product.all.reverse_order
		@gender = Product.where('gender = ?', params[:gender])
	end

	def show
		@products = Product.where('gender = ?', params[:gender]).reverse_order
		@gender = Product.where('gender = ?', params[:gender])
	end

	def update
    	if @product.update(product_params)
    		redirect_to admin_products_path
    	else
    		render :edit
    	end
	end

	def edit
	end

	def new
		@product = Product.new
		@product.product_images.build
	end

	def create
		@product = Product.new(product_params)
		@product.product_images.build
		if @product.save
			redirect_to admin_products_path
		else
			render :new
		end
	end

	def destroy
		@product.destroy
		redirect_to admin_products_path
 	end

 	def toggle_statuss
 		@product = Product.find_by(id: params[:product_id])
		@product.toggle_statuss!
		redirect_to admin_products_path
	end

	private

	def params_product
		@product = Product.find_by(id: params[:id])
	end

	def product_params
	  params.require(:product).permit(:id, :product_name, :price, :gender, :size, :statuss, product_images_images: [])
	end
end