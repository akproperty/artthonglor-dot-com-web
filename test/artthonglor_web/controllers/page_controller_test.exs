defmodule ArtthonglorWeb.PageControllerTest do
  use ArtthonglorWeb.ConnCase, async: true

  test "GET /", %{conn: conn} do
    conn = get(conn, ~p"/")

    html_response(conn, 200)
  end

  test "GET /room-plan", %{conn: conn} do
    conn = get(conn, ~p"/room-plan")

    assert html_response(conn, 200) =~ "Room Plan"
  end

  test "GET /floor-plan", %{conn: conn} do
    conn = get(conn, ~p"/floor-plan")

    assert html_response(conn, 200) =~ "Floor Plan"
  end
end
