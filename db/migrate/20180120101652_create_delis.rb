class CreateDelis < ActiveRecord::Migration[5.1]
  def change
    create_table :delis, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|

      t.timestamps
    end
  end
end
