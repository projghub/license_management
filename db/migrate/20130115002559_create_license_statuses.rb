class CreateLicenseStatuses < ActiveRecord::Migration
  def up
    create_table :license_statuses do |t|
      t.string :name

      t.timestamps
    end
  end

  def down
    drop_table :license_statuses
  end
end
