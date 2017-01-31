CasaAccountType = GraphQL::ObjectType.define do
  name 'CasaAccount'
  description 'A current or saving account'
  # `!` marks a field as "non-null"
  field :id, !types.ID
  field :account_no, !types.String
  field :product_code, !types.String
  field :product_desc, !types.String
  field :currency, !types.String
  field :bal, !types.Float
  field :avail_bal, !types.Float
  field :transactions do
    type -> { types[TransactionType] }
    resolve -> (obj, _args, _ctx) { obj.transactions }
  end
end
