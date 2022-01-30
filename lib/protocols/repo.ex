defmodule Protocols.Repo do
  use Ecto.Repo,
    otp_app: :protocols,
    adapter: Ecto.Adapters.Postgres
end
