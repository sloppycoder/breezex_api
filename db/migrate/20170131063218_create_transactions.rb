class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.date :trx_date
      t.string :memo
      t.decimal :withdrawl_amount, precision: 8, scale: 2
      t.decimal :deposit_amount, precision: 8, scale: 2
      t.string :currency, limit: 3
      t.decimal :bal, precision: 8, scale: 2
      
      t.timestamps
    end
  end
end
