defmodule Artthonlgor.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      ArtthonlgorWeb.Telemetry,
      # Start the Ecto repository
      Artthonlgor.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Artthonlgor.PubSub},
      # Start Finch
      {Finch, name: Artthonlgor.Finch},
      # Start the Endpoint (http/https)
      ArtthonlgorWeb.Endpoint
      # Start a worker by calling: Artthonlgor.Worker.start_link(arg)
      # {Artthonlgor.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Artthonlgor.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    ArtthonlgorWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
