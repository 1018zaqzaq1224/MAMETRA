class RemoveStateFromProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :state, :string
  end
end
