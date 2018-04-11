class ChangeDatatypeImageIdOfSnapImages < ActiveRecord::Migration[5.1]
  def change
	change_column :snap_images, :image_id, :string
  end
end
