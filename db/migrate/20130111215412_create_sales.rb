class CreateSales < ActiveRecord::Migration
  def up
    create_table :sales do |t|
      t.integer :number
      t.boolean :deleted, null: false
      t.string :created_by
      t.string :modified_by

      t.timestamps
    end
  end

  def down
    drop_table :sales
  end
end
