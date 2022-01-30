# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :protocols,
  ecto_repos: [Protocols.Repo]

# Configures the endpoint
config :protocols, ProtocolsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "SeK6LzginvC89oldMaM/hiBmYPTu9W1njUFQF/3lfX59Dj+10VjjXWhDw/hNMcT4",
  render_errors: [view: ProtocolsWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Protocols.PubSub,
  live_view: [signing_salt: "IBCUdW0n"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
