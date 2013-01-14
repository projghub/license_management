class CreateOpportunities < ActiveRecord::Migration
  def up
    create_table :opportunities do |t|
      t.integer :agreement_id, null: false
      t.date :created_date

      t.timestamps
    end
  end

  def down
    drop_table :opportunities
  end
end
