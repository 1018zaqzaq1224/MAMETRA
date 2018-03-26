class CreateProductImages < ActiveRecord::Migration[5.1]
  def change
    create_table :product_images, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
    	t.integer :product_id
    	t.string :image_number

      t.timestamps
    end
  end
end
