# rubocop:disable Lint/UselessAssignment
QueryType = GraphQL::ObjectType.define do
  name 'Query'
  description 'The query root for this schema'

  field :customer do
    type CustomerType
    argument :id, !types.ID
    resolve -> (obj, args, ctx) {
      Customer.find(args[:id])
    }
  end

  field :casa_account do
    type CasaAccountType
    argument :id, !types.ID
    resolve -> (obj, args, ctx) {
      CasaAccount.find(args[:id])
    }
  end

  field :credit_card do
    type CreditCardType
    argument :id, !types.ID
    resolve -> (obj, args, ctx) {
      CreditCard.find(args[:id])
    }
  end

  field :transaction do
    type TransactionType
    argument :id, !types.ID
    resolve -> (obj, args, ctx) {
      Transaction.find(args[:id])
    }
  end
end
