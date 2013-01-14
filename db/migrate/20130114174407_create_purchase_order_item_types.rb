class CreatePurchaseOrderItemTypes < ActiveRecord::Migration
  def up
    create_table :purchase_order_item_types do |t|
      t.string :name

      t.timestamps
    end
  end

  def down
    drop_table :purchase_order_item_types
  end
end
