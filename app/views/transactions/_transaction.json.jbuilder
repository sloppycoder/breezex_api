json.extract! transaction, :id, :trx_date, :memo, :deposit_amount, :withdrawl_amount, :currency, :bal, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)