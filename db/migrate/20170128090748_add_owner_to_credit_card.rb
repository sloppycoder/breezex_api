class AddOwnerToCreditCard < ActiveRecord::Migration[5.0]
  def change
    add_reference :credit_cards, :customer, foreign_key: true
  end
end
