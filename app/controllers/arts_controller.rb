class ArtsController < ApplicationController
	def index
		@arts = Art.all
		@arts = Art.page(params[:page]).reverse_order
		@arts = if params[:search]
			@arts = Art.search(params[:search]).page(params[:page]).reverse_order
		else
			Art.page(params[:page]).reverse_order
		end
	end

	def new
		@art = Art.new
		@art.art_images.build
	end

	def create
		@art = Art.new(art_params)
		@art.save
		redirect_to arts_path
	end

	def edit
		@art = Art.find(params[:id])
	end

	def show
		@art = Art.find(params[:id])
	end

	private

	def art_params
		params.require(:art).permit(:event_name, :artist_name, :start_date, :end_date, :event_indo, art_images_images: [])
	end
end
