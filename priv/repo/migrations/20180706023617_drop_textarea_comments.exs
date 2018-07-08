defmodule Many.Repo.Migrations.DropTextareaComments do
  use Ecto.Migration

  def change do
    alter table(:posts) do
      remove(:title)
    end
  end
end
