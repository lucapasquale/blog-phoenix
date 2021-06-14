defmodule BlogPhoenixWeb.Schema.AccountTypes do
  use Absinthe.Schema.Notation

  @desc "Signup input"
  input_object :signup_input do
    field :username, non_null(:string)
    field :password, non_null(:string)
  end

  @desc "A user of the blog"
  object :user do
    field :id, non_null(:id)
    field :username, non_null(:string)

    field :posts, list_of(:post)
  end
end
