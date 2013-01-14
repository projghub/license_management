class CreateLookups < ActiveRecord::Migration
  def up
    create_table :lookups do |t|
      t.string :lookup_type
      t.string :name, null: false
      t.integer :value
      t.string :description
      t.integer :priority, default: 1

      t.timestamps
    end
  end

  def down
    drop_table :lookups
  end
end
