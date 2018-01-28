class RemoveStatusFromProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :status, :integer
  end
end
