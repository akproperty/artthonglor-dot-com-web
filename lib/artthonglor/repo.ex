defmodule Artthonglor.Repo do
  use Ecto.Repo,
    otp_app: :artthonglor,
    adapter: Ecto.Adapters.Postgres
end
