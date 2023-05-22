class CreateEconomics < ActiveRecord::Migration[7.0]
  def change
    create_table :economics do |t|
      t.string :Title
      t.string :Subtitle
      t.string :description

      t.timestamps
    end
  end
end
