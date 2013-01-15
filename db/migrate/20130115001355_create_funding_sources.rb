class CreateFundingSources < ActiveRecord::Migration
  def up
    create_table :funding_sources do |t|
      t.string :name

      t.timestamps
    end
  end

  def down
    drop_table :funding_sources
  end
end
