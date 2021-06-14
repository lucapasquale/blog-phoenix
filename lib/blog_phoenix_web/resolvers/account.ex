defmodule BlogPhoenixWeb.Resolvers.Account do
  def get_user(%BlogPhoenix.Content.Post{} = post, _args, _resolution) do
    {:ok, BlogPhoenix.Accounts.get_user!(post.user_id)}
  end
end
