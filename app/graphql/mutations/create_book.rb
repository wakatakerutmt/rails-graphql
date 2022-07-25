module Mutations
  class CreateBook < Mutations::BaseMutation
    argument :params, InputTypes::Book, required: true

    field :book, ObjectTypes::Book, null: false

    def resolve(params:)
      book = Book.create!(params.to_h)

      { book: } # Ruby 3.1で ES6風のハッシュリテラル省略記法が追加された
    rescue StandardError => e
      GraphQL::ExecutionError.new(e.message)
    end
  end
end
