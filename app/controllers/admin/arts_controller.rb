class Admin::ArtsController < ApplicationController

	layout 'application.html 2'
	before_action :authenticate_admin!
	before_action :params_art, only:[:index, :update, :edit, :destroy]
	def index
		@arts = Art.all.reverse_order
	end

	def update
    	if @art.update(art_params)
    		redirect_to admin_arts_path
    	else
    		render :edit
    	end
	end

	def edit
	end

	def new
		@art = Art.new
		@art.art_images.build
	end

	def create
		@art = Art.new(art_params)
		@art.art_images.build
		if @art.save
			redirect_to admin_arts_path
		else
			render :new
		end
	end

	def destroy
		@art.destroy
		redirect_to admin_arts_path
 	end

	private

	def params_art
		@art = Art.find_by(id: params[:id])
	end

	def art_params
	  params.require(:art).permit(:id, :event_name, :artist_name, :start_date, :end_date, :event_info, art_images_images: [])
	end

end
