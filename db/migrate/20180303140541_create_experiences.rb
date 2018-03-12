class CreateExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :experiences do |t|
      t.string :time
      t.string :company
      t.string :office
      t.text :description

      t.timestamps
    end
  end
end
