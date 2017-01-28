json.extract! credit_card, :id, :account_no, :bal, :avail_credit, :last_stmt_bal, :due_date,
              :credit_limit, :created_at, :updated_at
json.url credit_card_url(credit_card, format: :json)
