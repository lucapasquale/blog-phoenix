defmodule BlogPhoenix.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  alias BlogPhoenix.Content

  schema "users" do
    field :password_hash, :string, null: false
    field :username, :string, null: false

    has_many :post, Content.Post

    timestamps()
  end

  @doc false
  def changeset(%__MODULE__{} = user, attrs) do
    attrs =
      attrs
      |> Map.put(:password_hash, Comeonin.Argon2.hashpwsalt(attrs.password))

    user
    |> cast(attrs, [:username, :password_hash])
    |> validate_required([:username, :password_hash])
    |> unique_constraint(:username)
  end
end
