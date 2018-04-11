class Admin::SnapsController < ApplicationController

	layout 'application.html 2'
	before_action :authenticate_admin!
	before_action :params_snap, only:[:index, :update, :create, :edit, :destroy]

	def index
		@snaps = Snap.all.reverse_order
	end

	def update
    	if @snap.update(snap_params)
    		redirect_to admin_snaps_path
    	else
    		render :edit
    	end
	end

	def edit
	end

	def new
		@snap = Snap.new
                @snap.items.build
		@snap.snap_images.build
	end

	def create
		@snap = Snap.new(snap_params)

		if @snap.save
			redirect_to admin_snaps_path
		else
			render :new
		end
	end

	def destroy
		@snap.destroy
		redirect_to admin_snaps_path
 	end

	private

	def params_snap
		@snap = Snap.find_by(id: params[:id])
	end

	def snap_params
	  params.require(:snap).permit(:id, :snap_name, { items_attributes: [:id, :item_name, :genre_id, :_destroy, { genres_attributes: [:id, :genre_name, :_destroy] }] }, snap_images_images: [])
	end
end
