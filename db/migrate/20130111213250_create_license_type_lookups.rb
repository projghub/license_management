class CreateLicenseTypeLookups < ActiveRecord::Migration
  def up
    create_table :license_type_lookups do |t|
      t.integer :item_id
      t.integer :license_type_id

      t.timestamps
    end
  end

  def down
    drop_table :license_type_lookups
  end
end
