defmodule SoftDelete.Repo do
  use Ecto.Repo,
    otp_app: :soft_delete,
    adapter: Ecto.Adapters.Postgres
end
