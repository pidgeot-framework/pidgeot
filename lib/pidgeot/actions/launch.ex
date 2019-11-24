defmodule Pidgeot.Actions.Launch do
  use PidgeotCore.Action

  def perform(conn) do
    {conn,_} = tell(conn)
                |> text("omg it's working!!!")
                |> text("I can't believe it!")

    conn
  end
end
