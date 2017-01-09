class CreateFamilyComponents < ActiveRecord::Migration[5.0]
  def change
    create_table :family_components do |t|
      t.string :familyComponentName
    end
  end
end
