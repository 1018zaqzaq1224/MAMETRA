class CreateSnaps < ActiveRecord::Migration[5.1]
  def change
    create_table :snaps do |t|
    	t.string :snap_name

      t.timestamps
    end
  end
end
