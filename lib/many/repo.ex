defmodule Many.Repo do
  use Ecto.Repo,
    otp_app: :many,
    adapter: Ecto.Adapters.Postgres
end
