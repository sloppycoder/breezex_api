class AddOwnerToUser < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :customer, foreign_key: true
  end
end
