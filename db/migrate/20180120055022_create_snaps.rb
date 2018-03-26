class CreateSnaps < ActiveRecord::Migration[5.1]
  def change
    create_table :snaps, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
    	t.string :snap_name

      t.timestamps
    end
  end
end
