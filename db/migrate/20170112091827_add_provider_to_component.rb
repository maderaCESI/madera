class AddProviderToComponent < ActiveRecord::Migration[5.0]
  def change
    add_reference :components, :provider, foreign_key: true
  end
end
