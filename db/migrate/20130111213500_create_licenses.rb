class CreateLicenses < ActiveRecord::Migration
  def up
    create_table :licenses do |t|
      t.integer :purchase_order_id, null: false
      t.integer :license_type_id, null: false
      t.string :net_suite_account_id
      t.integer :license_status_id
      t.integer :quantity
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end

  def down
    drop_table :licenses
  end
end
