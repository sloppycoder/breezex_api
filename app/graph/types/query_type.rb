# rubocop:disable Lint/UselessAssignment
QueryType = GraphQL::ObjectType.define do
  name 'Query'
  description 'The query root for this schema'

  field :customer do
    type CustomerType
    argument :id, !types.ID
    resolve = lambda do |_obj, args, _ctx|
      Customer.find(args[:id])
    end
  end

  field :casa_account do
    type CasaAccountType
    argument :id, !types.ID
    resolve = lambda do |_obj, args, _ctx|
      CasaAccount.find(args[:id])
    end
  end

  field :credit_card do
    type CreditCardType
    argument :id, !types.ID
    resolve = lambda do |_obj, args, _ctx|
      CreditCard.find(args[:id])
    end
  end
end
