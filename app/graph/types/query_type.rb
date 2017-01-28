QueryType = GraphQL::ObjectType.define do
  name "Query"
  description "The query root for this schema"
 
  field :customer do
    type CustomerType
    argument :id, !types.ID
    resolve -> (obj, args, ctx) {
      Customer.find(args[:id])
    }
  end
end
 