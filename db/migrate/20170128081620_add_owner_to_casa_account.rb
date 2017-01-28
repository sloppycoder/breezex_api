class AddOwnerToCasaAccount < ActiveRecord::Migration[5.0]
  def change
    add_reference :casa_accounts, :customer, foreign_key: true
  end
end
