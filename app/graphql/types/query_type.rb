module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # We can add multiple queries in single file using code below (those we have distributed in multiple files).

    # field :all_posts, [PostType], null: false,
    # description: "Returns all Posts"
    #
    # def all_posts
    #   Post.all
    # end
    #
    # field :post, Types::PostType, null: false do
    #   argument :id, ID, required: true
    # end
    #
    # def post(id:)
    #   Post.find_by_id(id)
    # end


    # Calling multiple query files, defining the field name (query name).
    field :all_posts, resolver: Queries::AllPosts
    field :post, resolver: Queries::Post
    field :all_users, resolver: Queries::AllUsers

  end
end
