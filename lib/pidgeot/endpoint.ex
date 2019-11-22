defmodule Pidgeot.Endpoint do
  use PidgeotCore.Endpoint

  alexa on: "/alexa"

  match _ do
    send_resp(conn, 404, "oops... Nothing here :(")
  end
end
