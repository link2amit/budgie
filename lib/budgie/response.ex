defmodule Budgie.Keyword do
  use Ecto.Schema

  schema "response" do
    field(:answer, :string)
    belongs_to(:keyword, Budgie.Keyword)

    timestamps()
  end
end
