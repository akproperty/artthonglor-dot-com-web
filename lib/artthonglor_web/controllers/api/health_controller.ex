defmodule ArtthonglorWeb.Api.HealthController do
  use ArtthonglorWeb, :controller

  def check(conn, _params) do
    json(conn, "it works")
  end
end
