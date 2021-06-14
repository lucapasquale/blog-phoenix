defmodule BlogPhoenixWeb.Resolvers.Content do
  def list_posts(_parent, _args, _resolution) do
    {:ok, BlogPhoenix.Content.list_posts()}
  end
end
