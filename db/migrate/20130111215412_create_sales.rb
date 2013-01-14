class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.integer :number
      t.boolean :deleted
      t.string :created_by
      t.string :modified_by

      t.timestamps
    end
  end
end
