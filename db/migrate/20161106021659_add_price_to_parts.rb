class AddPriceToParts < ActiveRecord::Migration
  def change
    add_column :parts, :price, :float
  end
end
