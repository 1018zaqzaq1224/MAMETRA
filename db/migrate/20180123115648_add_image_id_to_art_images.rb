class AddImageIdToArtImages < ActiveRecord::Migration[5.1]
  def change
    add_column :art_images, :image_id, :text
  end
end
