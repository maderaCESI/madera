class CreateJoinTableComponentsModulus < ActiveRecord::Migration[5.0]
  def change
    create_join_table :components, :modulus do |t|
      # t.index [:component_id, :modulu_id]
      # t.index [:modulu_id, :component_id]
    end
  end
end
