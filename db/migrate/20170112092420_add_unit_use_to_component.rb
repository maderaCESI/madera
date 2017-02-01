class AddUnitUseToComponent < ActiveRecord::Migration[5.0]
  def change
    add_reference :components, :unite_use, foreign_key: true
  end
end
