defmodule BlogPhoenixWeb.Resolvers.Account do
  def get_user(%BlogPhoenix.Content.Post{} = post, _args, _resolution) do
    {:ok, BlogPhoenix.Accounts.get_user!(post.user_id)}
  end

  def signup(_parent, %{input: input}, _resolution) do
    BlogPhoenix.Accounts.create_user(input)
  end
end
