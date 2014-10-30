# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the router
config :phoenix, Demo.Router,
  url: [host: "localhost"],
  http: [port: System.get_env("PORT")],
  https: false,
  secret_key_base: "Ijnj/G7p0sn1aQPeyjVsKmwwUME/FQ9s1zr9bWZho42oxqa9zTTrSDqjp7EoMNqKKPWG411chBrCND55XCO+tw==",
  catch_errors: true,
  debug_errors: false,
  error_controller: Demo.PageController

# Session configuration
config :phoenix, Demo.Router,
  session: [store: :cookie,
            key: "_demo_key"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
