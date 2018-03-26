class CreateHomes < ActiveRecord::Migration[5.1]
  def change
    create_table :homes, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|

      t.timestamps
    end
  end
end
