class CreateCctps < ActiveRecord::Migration[5.0]
  def change
    create_table :cctps do |t|
      t.string :cctpcharacteristics
    end
  end
end
