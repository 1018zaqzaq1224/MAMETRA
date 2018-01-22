class CreateArts < ActiveRecord::Migration[5.1]
  def change
    create_table :arts do |t|
    	t.string :event_name
    	t.string :artist_name
    	t.date :start_date
    	t.date :end_date
    	t.text :event_info

      t.timestamps
    end
  end
end
