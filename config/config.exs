# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenix_lego,
  ecto_repos: [PhoenixLego.Repo]

# Configures the endpoint
config :phoenix_lego, PhoenixLegoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "cN0MhDfa5TBevlRdiIuxe8yWFzXGrfbuJjnaoesHeOUTqChgOVe6PRqgjdtr5RKm",
  render_errors: [view: PhoenixLegoWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PhoenixLego.PubSub,
  live_view: [signing_salt: "LBGKyUYY"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
