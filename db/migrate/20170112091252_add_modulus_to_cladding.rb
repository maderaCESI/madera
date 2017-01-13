class AddModulusToCladding < ActiveRecord::Migration[5.0]
  def change
    add_reference :modulus, :cladding, foreign_key: true
  end
end
