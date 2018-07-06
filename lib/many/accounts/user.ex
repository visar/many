defmodule Many.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Many.Blog.Post

  schema "users" do
    field(:name, :string)

    has_many(:posts, Many.Blog.Post)

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name])
    |> validate_required([:name])
    |> Ecto.Changeset.cast_assoc(:posts, with: &Post.changeset/2)

    # |> cast_assoc(:posts)
  end
end
