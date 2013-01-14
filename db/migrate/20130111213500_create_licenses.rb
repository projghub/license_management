class CreateLicenses < ActiveRecord::Migration
  def up
    create_table :licenses do |t|
      t.integer :agreement_id
      t.integer :license_type_id
      t.integer :status_id

      t.timestamps
    end
  end

  def down
    drop_tables :licenses
  end
end
