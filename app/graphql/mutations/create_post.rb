module Mutations
  class CreatePost < Mutations::BaseMutation

    # Arguments needs to perform the mutation.
    argument :title, String, required: true
    argument :date, String, required: true
    argument :details, String, required: true
    argument :userId, Int, required: true

    # Fields type those needs to be returned after the completion of mutation.
    field :post, Types::PostType, null: false
    field :errors, [String], null: false

    # resolve function to perform data manipulation.
    def resolve(title:, date:, details:, userId:)
      post = Post.new(title: title, date: date, details: details, user_id: userId)
      if post.save
        {
          post: post,
        }
      else
        {
          post: nil,
          errors: GraphQLError('No Post Found')
        }
      end
    end
  end
end