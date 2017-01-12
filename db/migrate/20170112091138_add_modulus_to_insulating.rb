class AddModulusToInsulating < ActiveRecord::Migration[5.0]
  def change
    add_reference :insulatings, :modulus, foreign_key: true
  end
end
