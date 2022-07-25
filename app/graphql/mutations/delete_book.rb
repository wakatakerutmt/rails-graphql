module Mutations
  class DeleteBook < Mutations::BaseMutation
    argument :id, ID, required: true

    field :id, ID, null: false

    def resolve(id:)
      Book.find(id).delete

      { id: }
    rescue StandardError => e
      GraphQL::ExecutionError.new(e.message)
    end
  end
end
