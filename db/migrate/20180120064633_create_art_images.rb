class CreateArtImages < ActiveRecord::Migration[5.1]
  def change
    create_table :art_images, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
    	t.integer :art_id
    	t.string :image_number

      t.timestamps
    end
  end
end
