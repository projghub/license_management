class CreateProductVersions < ActiveRecord::Migration
  def up
    create_table :product_versions do |t|
      t.string :name

      t.timestamps
    end
  end

  def down
    drop_table :product_versions
  end
end
