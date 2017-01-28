class CreateCasaAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :casa_accounts do |t|
      t.string :account_no
      t.string :product_code, limit: 10
      t.string :product_desc
      t.string :currency, limit: 3
      t.decimal :bal, precision: 8, scale: 2, default: 0.0
      t.decimal :avail_bal, precision: 8, scale: 2, default: 0.0

      t.timestamps
    end
  end
end
