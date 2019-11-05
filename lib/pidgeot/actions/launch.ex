defmodule Pidgeot.Actions.Launch do
  import Plug.Conn

  def call(conn) do
    send_resp(conn, 200, "Hello!")
  end
end
