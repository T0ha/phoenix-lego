defmodule PhoenixLego.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_lego,
    adapter: Ecto.Adapters.Postgres
end
