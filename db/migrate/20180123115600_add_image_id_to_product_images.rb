class AddImageIdToProductImages < ActiveRecord::Migration[5.1]
  def change
    add_column :product_images, :image_id, :text
  end
end
