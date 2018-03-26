class CreateSnapImages < ActiveRecord::Migration[5.1]
  def change
    create_table :snap_images, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
    	t.integer :snap_id
    	t.string :image_number

      t.timestamps
    end
  end
end
