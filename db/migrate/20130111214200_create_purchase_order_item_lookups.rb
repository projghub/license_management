class CreatePurchaseOrderItemLookups < ActiveRecord::Migration
  def up
    create_table :purchase_order_item_lookups do |t|
      t.integer :purchase_order_id, null: false
      t.integer :purchase_order_item_type_id
      t.integer :fulfillment_type_id
      t.string :name
      t.text :description
      t.boolean :standard
      t.boolean :inactive

      t.timestamps
    end
  end

  def down
    drop_table :purchase_order_item_lookups
  end
end
