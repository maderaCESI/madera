class CreateJoinTableScaleModularHousesModulus < ActiveRecord::Migration[5.0]
  def change
    create_join_table :modulus, :scaleModularHouses do |t|
      # t.index [:modulu_id, :scale_modular_house_id]
      # t.index [:scale_modular_house_id, :modulu_id]
    end
  end
end
