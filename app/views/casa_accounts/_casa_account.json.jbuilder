json.extract! casa_account, :id, :account_no, :bal, :avail_bal, :product_code, :product_desc,
              :currency, :created_at, :updated_at
json.url casa_account_url(casa_account, format: :json)
