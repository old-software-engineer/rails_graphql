module Types
  class UserType < Types::BaseObject
    # Fields for user type.
    field :id, ID, null: false
    field :name, String, null: true
    field :posts, [Types::PostType], null: true
    field :post_count, String, null: true

    def post_count
      object.posts.count
    end
  end
end
