class CreateLicenseTypes < ActiveRecord::Migration
  def change
    create_table :license_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
