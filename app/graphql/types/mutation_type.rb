module Types
  class MutationType < Types::BaseObject
    # 追加 create_bookミューテーションが実行されたら、Mutations::CreateBookクラスのresolveメソッドが呼ばれるということを意味
    field :create_book, mutation: Mutations::CreateBook
    field :update_book, mutation: Mutations::UpdateBook
    field :delete_book, mutation: Mutations::DeleteBook
    field :ddd_book, mutation: Mutations::DddBook

    # TODO: remove me
    field :test_field, String, null: false,
                               description: 'An example field added by the generator'
    def test_field
      'Hello World'
    end
  end
end
