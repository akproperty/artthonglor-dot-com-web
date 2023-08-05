defmodule ArtthonglorWeb.PageController do
  use ArtthonglorWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
