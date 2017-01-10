class CreateModules < ActiveRecord::Migration[5.0]
  def change
    create_table :modulus do |t|
      t.string :modulusName
      t.string :modulusNature
      t.float :modulusHeight
      t.float :modulusLength
      t.integer :mdSection
      t.float :mdHeight
      t.float :mdLength
      t.integer :maSection
      t.float :maHeight
      t.float :maLength
      t.integer :maeSection
      t.float :maeHeight
      t.float :maeLength
      t.integer :masSection
      t.float :masHeight
      t.float :masLength
    end
  end
end
