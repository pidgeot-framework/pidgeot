defmodule Pidgeot.IntentMap do
  use PidgeotCore.IntentMap

  map "Launch", to: Pidgeot.Actions.Launch
end
