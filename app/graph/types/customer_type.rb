CustomerType = GraphQL::ObjectType.define do
  name 'Customer'
  description 'A single customer'
  # `!` marks a field as "non-null"
  field :id, !types.ID
  field :rel_id, !types.String
  field :name, !types.String
  field :segment, !types.String
  field :country, !types.String
  field :casa_accounts do 
    type -> { types[CasaAccountType] }
    resolve -> (obj, args, ctx) {
      obj.casa_accounts
    }
  end
  field :credit_cards do 
    type -> { types[CreditCardType] }
    resolve -> (obj, args, ctx) {
      obj.credit_cards
    }
  end
end