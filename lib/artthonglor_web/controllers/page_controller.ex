defmodule ArtthonglorWeb.PageController do
  use ArtthonglorWeb, :controller

  def home(conn, _params) do
    render(conn, :home, page_title: "ราคาดีที่สุด...ในทองหล่อ")
  end
end
