defmodule ArtthonglorWeb.PageController do
  use ArtthonglorWeb, :controller

  def home(conn, _params) do
    render(conn, :home,
      page_title: "Best Price in Thonglor",
      description: "Condominium Registered and Ready To Move In. Best Price in Thonglor"
    )
  end

  def room_plan(conn, _params) do
    render(conn, :room_plan, page_title: "Room Plan", description: "Room Plan")
  end

  def floor_plan(conn, _params) do
    render(conn, :floor_plan, page_title: "Floor Plan", description: "Floor Plan")
  end

  def contact(conn, _params) do
    render(conn, :contact, page_title: "Contact", description: "Contact")
  end

  def gallery(conn, _params) do
    render(conn, :gallery, page_title: "Gallery", description: "Gallery")
  end
end
