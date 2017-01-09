class CreateProjectModularHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :project_modular_houses do |t|
      t.string :projectName
    end
  end
end
