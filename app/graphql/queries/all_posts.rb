module Queries
  class AllPosts < Queries::BaseQuery

    type [Types::PostType], null: false

    def resolve
      Post.all
    end
  end
end