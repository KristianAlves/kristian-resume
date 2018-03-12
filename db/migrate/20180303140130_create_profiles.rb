class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :phone
      t.string :mail
      t.text :description

      t.timestamps
    end
  end
end
