class CreateAgreements < ActiveRecord::Migration
  def up
    create_table :agreements do |t|
      t.integer :purchase_order_id
      t.integer :purchase_order_item_id
      t.integer :purchase_order_item_type_id
      t.string :account_id
      t.integer :quantity
      t.text :notes
      t.date :start_date
      t.date :end_date
      t.string :exuberance_coordinator_id
      t.integer :funding_source
      t.integer :status_id
      t.boolean :deleted
      t.string :created_by
      t.string :modified_by
      t.string :net_suite_account_id

      t.timestamps
    end
  end

  def down
    drop_table :agreements
  end
end
