defmodule Budgie do
  use Supervisor

  @moduledoc """
  Budgie keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """
  def start_link(arg) do
    Supervisor.start_link(__MODULE__, arg)
  end

  def init(arg) do
    children = [
      worker(Budgie.Robot, [arg], restart: :temporary)
    ]

    supervise(children, strategy: :simple_one_for_one)
  end
end
