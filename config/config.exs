# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

config :budgie, Budgie.Robot,
  adapter: Hedwig.Adapters.Console,
  name: "budgie",
  aka: "/",
  responders: [
    {Hedwig.Responders.Help, []},
    {Hedwig.Responders.Ping, []},
    {Budgie.Responders.Eis, []}
  ]

# Configures the endpoint
config :budgie, BudgieWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "CqeMbmUpHqZ77FEIoxNyYmhvmRqqmmSQJxAavTYy+KFBkjFXoawQ4zbI/2M9EkJ3",
  render_errors: [view: BudgieWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Budgie.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
