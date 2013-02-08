class CreateEvents < ActiveRecord::Migration
  def up
    create_table :events do |t|
      t.string :name, null: false
      t.string :description
      t.integer :priority

      t.timestamps
    end
  end

  def down
    drop_table :events
  end
end
