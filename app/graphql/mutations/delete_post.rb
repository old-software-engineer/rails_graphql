class Mutations::DeletePost < Mutations::BaseMutation

  # Arguments needs to perform the mutation.
  argument :id, Int, required: true

  # Fields type those needs to be returned after the completion of mutation.
  field :post, Types::PostType, null: false
  field :errors, [String], null: false

  # resolve function to perform data manipulation.
  def resolve(id:)
    post = Post.find_by_id(id)
    if post.destroy
      # Successful creation, return the created object with no errors
      {
        post: post,
        errors: [],
      }
    else
      # Failed save, return the errors to the client
      {
        post: nil,
        errors: GraphQLError('No Post Found')
      }
    end
  end
end