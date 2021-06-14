defmodule BlogPhoenixWeb.Schema do
  use Absinthe.Schema
  import_types(Absinthe.Type.Custom)

  import_types(BlogPhoenixWeb.Schema.AccountTypes)
  import_types(BlogPhoenixWeb.Schema.ContentTypes)

  alias BlogPhoenixWeb.Resolvers

  query do
    @desc "Get all posts"
    field :posts, list_of(:post) do
      resolve(&Resolvers.Content.list_posts/3)
    end
  end

  mutation do
    @desc "Signup"
    field :signup, :user do
      arg(:input, non_null(:signup_input))

      resolve(&Resolvers.Account.signup/3)
    end
  end
end
