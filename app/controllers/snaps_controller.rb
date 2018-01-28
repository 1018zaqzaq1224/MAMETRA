class SnapsController < ApplicationController
	def index
		@snaps = Snap.all.reverse_order
	end

	private

	def snap_params
	  params.require(:snap).permit(:id, :snap_name, { items_attributes: [:id, :item_name, :_destroy, { genres_attributes: [:id, :genre_name, :_destroy] }] }, snap_images_images: [])
	end
end