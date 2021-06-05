module Types
  class PostType < Types::BaseObject
    # Fields for post type.

    field :id, ID, null: false
    field :title, String, null: true
    field :date, GraphQL::Types::ISO8601DateTime, null: true
    field :details, String, null: true
    field :user, Types::UserType, null: true
  end
end
