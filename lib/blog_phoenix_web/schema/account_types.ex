defmodule BlogPhoenixWeb.Schema.AccountTypes do
  use Absinthe.Schema.Notation

  @desc "A user of the blog"
  object :user do
    field :id, non_null(:id)
    field :username, non_null(:string)

    field :posts, list_of(:post)
  end
end
