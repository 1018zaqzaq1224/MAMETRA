class CreateDelis < ActiveRecord::Migration[5.1]
  def change
    create_table :delis do |t|

      t.timestamps
    end
  end
end
