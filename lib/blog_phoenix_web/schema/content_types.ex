defmodule BlogPhoenixWeb.Schema.ContentTypes do
  use Absinthe.Schema.Notation

  @desc "A blog post"
  object :post do
    field :id, non_null(:id)
    field :title, :string
    field :body, :string
    field :published_at, :datetime

    field :user, non_null(:user) do
      resolve(&BlogPhoenixWeb.Resolvers.Account.get_user/3)
    end
  end
end
