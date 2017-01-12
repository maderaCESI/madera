class CreateModulusComponents < ActiveRecord::Migration[5.0]
  def change
    create_table :modulus_components do |t|

      t.timestamps
    end
  end
end
