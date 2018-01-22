class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
    	t.integer :snap_id
    	t.integer :genre_id
    	t.string :item_name

      t.timestamps
    end
  end
end
