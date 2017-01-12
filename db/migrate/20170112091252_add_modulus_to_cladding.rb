class AddModulusToCladding < ActiveRecord::Migration[5.0]
  def change
    add_reference :claddings, :modulus, foreign_key: true
  end
end
