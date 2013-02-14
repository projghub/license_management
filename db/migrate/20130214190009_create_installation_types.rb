class CreateInstallationTypes < ActiveRecord::Migration
  def change
    create_table :installation_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
