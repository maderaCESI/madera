class CreateCladding < ActiveRecord::Migration[5.0]
  def change
    create_table :claddings do |t|
      t.integer :thicknessCladdings
    end
  end
end
