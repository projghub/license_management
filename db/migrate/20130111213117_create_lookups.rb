class CreateLookups < ActiveRecord::Migration
  def up
    create_table :lookups do |t|
      t.string :lookup_type
      t.string :name
      t.integer :value
      t.string :description
      t.integer :priority

      t.timestamps
    end
  end

  def down
    drop_table :lookups
  end
end
