defmodule ArtthonglorWeb.Plugs.AssignEnv do
  @moduledoc """
  This Plug assigns :env field with application environment
  """
  def init(opts), do: opts

  def call(conn, _opts) do
    Plug.Conn.assign(conn, :env, Application.fetch_env!(:artthonglor, :env))
  end
end
