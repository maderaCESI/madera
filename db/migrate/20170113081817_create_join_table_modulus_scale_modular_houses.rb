class CreateJoinTableModulusScaleModularHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :modulus_scale_modular_houses, id: false do |t|
      t.belongs_to :modulu, index: true
      t.belongs_to :scale_modular_house, index: true
    end
  end
end
