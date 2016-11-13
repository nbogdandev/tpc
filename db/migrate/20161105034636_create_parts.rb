class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.string :group
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
