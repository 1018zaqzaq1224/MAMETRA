class SnapsController < ApplicationController
	def index
		@snaps = Snap.all
		@snaps = Snap.page(params[:page]).reverse_order
		@snaps = if params[:search]
			@products = Snap.search(params[:search]).page(params[:page]).reverse_order
		else
			Snap.page(params[:page]).reverse_order
		end
	end

	def new
		@snap = Snap.new
		@product.product_images.build
	end

	def create
		@snap = Snap.new(snap_params)
		@product.save
		redirect_to snaps_path
	end

	def edit
		@snap = Snap.find(params[:id])
	end

	def show
		@snap = Snap.find(params[:id])
	end


	private

	def snap_params
	  params.require(:snap).permit(:snap_name,  snap_images_images: [])
	end
end