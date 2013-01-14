class CreatePurchaseOrderItems < ActiveRecord::Migration
  def up
    create_table :purchase_order_items do |t|
      t.integer :purchase_order_id, null: false
      t.integer :number
      t.decimal :amount
      t.integer :quantity
      t.integer :allocated_quantity
      t.boolean :deleted, default: false
      t.string :created_by
      t.string :modified_by

      t.timestamps
    end
  end

  def down
    drop_table :purchase_order_items
  end
end
