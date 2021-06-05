module Queries
  class AllUsers < Queries::BaseQuery
    # We also define optional :description
    # it’s a good practice to add a human-readable message to a field.
    # it will be automatically added to documentation providing more context to developers.
    description 'list all users'

    # Type needs to be returned.
    type [Types::UserType], null: false

    def resolve
      ::User.all
    end
  end
end