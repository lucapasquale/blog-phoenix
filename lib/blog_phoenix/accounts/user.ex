defmodule BlogPhoenix.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  alias BlogPhoenix.Content

  schema "users" do
    field :password_hash, :string
    field :username, :string

    has_many :post, Content.Post

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:username, :password_hash])
    |> validate_required([:username, :password_hash])
  end
end
