class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.string :paymentStep
      t.integer :sumToUnlock
    end
  end
end
