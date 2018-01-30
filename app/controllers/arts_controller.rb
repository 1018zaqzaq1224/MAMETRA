class ArtsController < ApplicationController
	def index
		@arts = Art.all.reverse_order
	end

	private

	def art_params
		params.require(:art).permit(:id, :event_name, :artist_name, :start_date, :end_date, :event_indo, art_images_images: [])
	end
end
