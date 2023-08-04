defmodule Artthonlgor.Repo do
  use Ecto.Repo,
    otp_app: :artthonlgor,
    adapter: Ecto.Adapters.Postgres
end
