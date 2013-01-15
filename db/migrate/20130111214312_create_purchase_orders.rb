class CreatePurchaseOrders < ActiveRecord::Migration
  def up
    create_table :purchase_orders do |t|
      t.integer :net_suite_account_id
      t.integer :region_id
      t.string :number
      t.integer :sale_number
      t.integer :invoice_number
      t.date :purchase_order_date
      t.string :apm #NetSuite?  APM - Area Partnership Manager
      t.string :sts #STS - Support & Training Specialist
      t.integer :funding_source_id
      t.boolean :deleted
      t.string :created_by
      t.string :modified_by

      t.timestamps
    end
  end

  def down
    drop_table :purchase_orders
  end
end
