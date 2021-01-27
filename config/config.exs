# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :anarchy,
  ecto_repos: [Anarchy.Repo]

# Configures the endpoint
config :anarchy, AnarchyWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "z35u+wIkN2vVffLI/jPIchdMgKUc+2+fGdh3iM6eiCdKNcwEQ5zGQLmX9TKHcaOy",
  render_errors: [view: AnarchyWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Anarchy.PubSub,
  live_view: [signing_salt: "/mc2hz9E"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

# Add Expug templating engine
config :phoenix, :template_engines,
  pug: PhoenixExpug.Engine
