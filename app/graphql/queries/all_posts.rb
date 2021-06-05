module Queries
  class AllPosts < Queries::BaseQuery
    # We also define optional :description
    # it’s a good practice to add a human-readable message to a field.
    # it will be automatically added to documentation providing more context to developers.
    description 'list all posts'

    # Type needs to be returned.
    type [Types::PostType], null: false

    def resolve
      ::Post.all
    end
  end
end