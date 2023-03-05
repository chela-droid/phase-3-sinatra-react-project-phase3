class CreateInventory < ActiveRecord::Migration[6.1]
  def change
    create_table :inventories do |t|
      t.string :medicine_name
      t.integer :quantity
      t.datetime :expiration_date
    end
  end
end
