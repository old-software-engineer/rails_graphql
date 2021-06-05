module Queries
  class Post < Queries::BaseQuery
    # We also define optional :description
    # it’s a good practice to add a human-readable message to a field.
    # it will be automatically added to documentation providing more context to developers.
    description 'get post by id'

    # Type needs to be returned.
    type Types::PostType, null: false

    # Arguments need to be passed.
    argument :id, Integer, required: true

    def resolve(id:)
      ::Post.find(id)
    end
  end
end