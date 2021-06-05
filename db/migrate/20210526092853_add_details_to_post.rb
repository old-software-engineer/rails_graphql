class AddDetailsToPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :details, :string
  end
end
