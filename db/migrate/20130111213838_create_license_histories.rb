class CreateLicenseHistories < ActiveRecord::Migration
  def up
    create_table :license_histories do |t|
      t.integer :license_id, null: false
      t.integer :event_id
      t.integer :previous_agreement_id
      t.integer :current_agreement_id
      t.integer :previous_license_type_id
      t.integer :current_license_type_id
      t.integer :previous_license_status_id
      t.integer :current_license_status_id
      t.integer :reason_id
      t.text :notes
      t.string :created_by

      t.timestamps
    end
  end

  def down
    drop_table :license_histories
  end
end
