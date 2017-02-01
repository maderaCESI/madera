class AddUnitUseToModulus < ActiveRecord::Migration[5.0]
  def change
    add_reference :modulus, :unite_use, foreign_key: true
  end
end
