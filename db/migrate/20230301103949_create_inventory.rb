class CreateInventory < ActiveRecord::Migration[6.1]
  def change
    create_table :inventories do |t|
      t.string :name
      t.integer :quantity
      t.datetime :expiration_date
    end
  end
end
