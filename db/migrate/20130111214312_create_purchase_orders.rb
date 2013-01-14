class CreatePurchaseOrders < ActiveRecord::Migration
  def up
    create_table :purchase_orders do |t|
      t.integer :sale_id
      t.string :account_id
      t.date :purchase_order_date
      t.string :number
      t.decimal :amount, precision: 10, scale: 2, default: 0.0, null: false
      t.string :invoice_number
      t.string :area_sales_manager_id
      t.integer :region_id
      t.string :field_technician_id
      t.decimal :discount, precision: 10, scale: 2, default: 0.0, null: false
      t.decimal :tax, precision: 10, scale: 2, default: 0.0, null: false
      t.text :notes
      t.boolean :deleted
      t.string :created_by
      t.string :modified_by
      t.string :net_suite_account_id

      t.timestamps
    end
  end

  def down
    drop_table :purchase_orders
  end
end
