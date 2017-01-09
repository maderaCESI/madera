class CreateInsulatings < ActiveRecord::Migration[5.0]
  def change
    create_table :insulatings do |t|
      t.string :insulatingName
      t.float :insulatingThickness
    end
  end
end
