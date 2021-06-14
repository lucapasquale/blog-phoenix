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
end
