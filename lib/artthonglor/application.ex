defmodule Artthonglor.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      ArtthonglorWeb.Telemetry,
      # Start the Ecto repository
      Artthonglor.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Artthonglor.PubSub},
      # Start Finch
      {Finch, name: Artthonglor.Finch},
      # Start the Endpoint (http/https)
      ArtthonglorWeb.Endpoint
      # Start a worker by calling: Artthonglor.Worker.start_link(arg)
      # {Artthonglor.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Artthonglor.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    ArtthonglorWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
