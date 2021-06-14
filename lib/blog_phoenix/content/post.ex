defmodule BlogPhoenix.Content.Post do
  use Ecto.Schema
  import Ecto.Changeset

  alias BlogPhoenix.Accounts

  schema "posts" do
    field :body, :string
    field :published_at, :naive_datetime
    field :title, :string

    belongs_to :user, Accounts.User

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :body, :published_at])
    |> validate_required([:title, :body, :published_at])
  end
end
