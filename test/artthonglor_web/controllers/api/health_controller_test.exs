defmodule ArtthonglorWeb.Api.HealthControllerTest do
  use ArtthonglorWeb.ConnCase, asnyc: true

  test "GET /heath returns 200 response", %{conn: conn} do
    conn = get(conn, ~p"/api/health")

    assert json_response(conn, 200) == "it works"
  end
end
