class CreateCreditCards < ActiveRecord::Migration[5.0]
  def change
    create_table :credit_cards do |t|
      t.string :account_no
      t.date :due_date
      t.string :product_code, limit: 10
      t.string :product_desc
      t.string :currency, limit: 3
      t.decimal :bal, precision: 8, scale: 2, default: 0.0
      t.decimal :avail_credit, precision: 8, scale: 2, default: 0.0
      t.decimal :last_stmt_bal, precision: 8, scale: 2, default: 0.0
      t.decimal :credit_limit, precision: 8, scale: 2, default: 0.0

      t.timestamps
    end
  end
end
