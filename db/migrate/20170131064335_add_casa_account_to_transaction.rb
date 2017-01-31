class AddCasaAccountToTransaction < ActiveRecord::Migration[5.0]
  def change
    add_reference :transactions, :casa_account, foreign_key: true
  end
end
