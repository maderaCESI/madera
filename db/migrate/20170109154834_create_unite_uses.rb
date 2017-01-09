class CreateUniteUses < ActiveRecord::Migration[5.0]
  def change
    create_table :unite_uses do |t|
      t.string :unitUseName
    end
  end
end
