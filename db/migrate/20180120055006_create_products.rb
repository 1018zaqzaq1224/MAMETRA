class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
    	t.string :product_name
    	t.integer :price
    	t.string :gender
    	t.string :size
    	t.string :state

      t.timestamps
    end
  end
end