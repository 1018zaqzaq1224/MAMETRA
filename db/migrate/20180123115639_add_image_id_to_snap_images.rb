class AddImageIdToSnapImages < ActiveRecord::Migration[5.1]
  def change
    add_column :snap_images, :image_id, :text
  end
end
