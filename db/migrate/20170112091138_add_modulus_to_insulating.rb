class AddModulusToInsulating < ActiveRecord::Migration[5.0]
  def change
    add_reference :modulus, :insulating, foreign_key: true
  end
end
