defmodule Budgie.Responders.Eis do
  @moduledoc """
    Responder to CRUD notes
  """

  use Hedwig.Responder
  alias Budgie.Services.Eis.Logger
  alias Budgie.Services.Eis.List
  alias Budgie.Services.Eis.Destroy
  alias Hedwig.Message

  Hedwig.Responder.hear ~r/eis (.*)/, %Message{matches: %{1 => content}, room: room} = msg do
    # IO.inspect(msg)
    reply(msg, Logger.log(%{username: msg.user, room: room, content: content}))
    # reply(msg, msg.matches[1])
  end
end
