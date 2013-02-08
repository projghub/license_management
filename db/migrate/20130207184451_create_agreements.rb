class CreateAgreements < ActiveRecord::Migration
  def up
    create_table :agreements do |t|
      t.string :net_suite_account_id

      t.timestamps
    end
  end

  def down
    drop_table :agreements
  end
end
