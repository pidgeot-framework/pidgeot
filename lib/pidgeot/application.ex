defmodule Pidgeot.Application do
  @moduledoc false
  use Application

  def start(_type, _args) do
    children = [
      Plug.Cowboy.child_spec(
        scheme: :http,
        plug: Pidgeot.Endpoint,
        options: [port: Application.get_env(:pidgeot, :port)]
      )
    ]

    opts = [strategy: :one_for_one, name: Pidgeot.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
