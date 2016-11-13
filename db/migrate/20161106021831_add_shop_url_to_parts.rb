class AddShopUrlToParts < ActiveRecord::Migration
  def change
    add_column :parts, :shop_url, :text
  end
end
