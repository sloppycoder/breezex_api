TransactionType = GraphQL::ObjectType.define do
  name 'Transaction'
  description 'A transaction on a casa account'
  # `!` marks a field as "non-null"
  field :id, !types.ID
  field :trx_date, !types.String
  field :memo, !types.String  
  field :deposit_amount, types.Float
  field :withdrawl_amount, types.Float
  field :currency, !types.String
  field :bal, !types.Float
end
