class AddUnitUseToComponent < ActiveRecord::Migration[5.0]
  def change
    add_reference :components, :unitUse, foreign_key: true
  end
end
