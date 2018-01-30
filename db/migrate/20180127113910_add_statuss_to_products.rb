class AddStatussToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :statuss, :integer, default: 0
  end
end
