# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :tlwnd_ddm, TlwndDdmWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "VJM3ZTD0WSfJnT4FHn66nVnwH9cfhwJAsiAjHj+OtDBnmZml2A85LYyG1PSvL9A6",
  render_errors: [view: TlwndDdmWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TlwndDdm.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "qd+BKFcV"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
