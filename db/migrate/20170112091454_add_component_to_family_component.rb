class AddComponentToFamilyComponent < ActiveRecord::Migration[5.0]
  def change
    add_reference :family_components, :component, foreign_key: true
  end
end
