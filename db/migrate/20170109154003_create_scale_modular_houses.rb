class CreateScaleModularHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :scale_modular_houses do |t|
      t.string :scaleName
      t.string :exteriorFinish
      t.string :coverType
      t.string :woodWorkingQuality
    end
  end
end
