class CreateCivilisations < ActiveRecord::Migration[7.0]
  def change
    create_table :civilisations do |t|
      t.string :Title
      t.string :Subtitle
      t.string :description

      t.timestamps
    end
  end
end
