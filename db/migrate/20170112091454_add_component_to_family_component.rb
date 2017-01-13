class AddComponentToFamilyComponent < ActiveRecord::Migration[5.0]
  def change
    add_reference :components, :family_component, foreign_key: true
  end
end
