CreditCardType = GraphQL::ObjectType.define do
  name 'CreditCardAccount'
  description 'A credit card account'
  # `!` marks a field as "non-null"
  field :id, !types.ID
  field :account_no, !types.String
  field :due_date, !types.String
  field :product_code, !types.String
  field :product_desc, !types.String
  field :currency, !types.String
  field :bal, !types.Float
  field :avail_credit, !types.Float
  field :last_stmt_bal, !types.Float
  field :credit_limit, !types.Float
end
