class CreateNetSuiteAccounts < ActiveRecord::Migration
  def up
    create_table :net_suite_accounts do |t|
      t.integer :account_id
      t.string :name
      t.string :parent_name

      t.timestamps
    end
  end

  def down
    drop_table :net_suite_accounts
  end
end
