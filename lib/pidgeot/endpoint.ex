defmodule Pidgeot.Endpoint do
  use PidgeotCore.Endpoint

  post "/alexa", to: PidgeotCore.Alexa.RequestHandler, init_opts: Pidgeot.IntentMap

  match _ do
    send_resp(conn, 404, "oops... Nothing here :(")
  end
end
