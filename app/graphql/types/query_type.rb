module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    field :books, resolver: Queries::Books # 追加
    field :book, resolver: Queries::Book # 追加

    # TODO: remove me
    field :test_field, resolver: Queries::Books,
      description: "An example field added by the generator"
    # def test_field
    #   "Hello World!"
    # end
  end
end
