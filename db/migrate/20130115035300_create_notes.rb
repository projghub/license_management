class CreateNotes < ActiveRecord::Migration
  def up
    create_table :notes do |t|
      t.text :description
      t.integer :noteable_id
      t.string  :noteable_type
      t.timestamps
    end
  end

  def down
    drop_table :notes
  end
end
