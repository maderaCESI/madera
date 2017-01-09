class CreateComponents < ActiveRecord::Migration[5.0]
  def change
    create_table :components do |t|
      t.string :componentName
      t.string :componentNature
      t.float :componentSection
      t.float :componentThickness
      t.float :componentLength
      t.float :componentWidth
    end
  end
end
