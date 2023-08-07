defmodule ArtthonglorWeb.PageController do
  use ArtthonglorWeb, :controller

  def home(conn, _params) do
    render(conn, :home, page_title: "ราคาดีที่สุด...ในทองหล่อ")
  end

  def room_plan(conn, _params) do
    render(conn, :room_plan, page_title: "Room Plan")
  end

  def floor_plan(conn, _params) do
    render(conn, :floor_plan, page_title: "Floor Plan")
  end

  def contact(conn, _params) do
    render(conn, :contact, page_title: "Contact")
  end
end
