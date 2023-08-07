defmodule ArtthonglorWeb.Router do
  use ArtthonglorWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {ArtthonglorWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ArtthonglorWeb do
    pipe_through :browser

    get "/", PageController, :home
    get "/room-plan", PageController, :room_plan
    get "/floor-plan", PageController, :floor_plan
    get "/contact", PageController, :contact
  end

  scope "/api", ArtthonglorWeb.Api do
    pipe_through :api

    get "/health", HealthController, :check
  end

  # Enable LiveDashboard and Swoosh mailbox preview in development
  if Application.compile_env(:artthonglor, :dev_routes) do
    # If you want to use the LiveDashboard in production, you should put
    # it behind authentication and allow only admins to access it.
    # If your application does not have an admins-only section yet,
    # you can use Plug.BasicAuth to set up some basic authentication
    # as long as you are also using SSL (which you should anyway).
    import Phoenix.LiveDashboard.Router

    scope "/dev" do
      pipe_through :browser

      live_dashboard "/dashboard", metrics: Artthonglor.Telemetry
      forward "/mailbox", Plug.Swoosh.MailboxPreview
    end
  end
end
