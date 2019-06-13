defmodule Budgie.Keyword do
  use Ecto.Schema

  schema "keyword" do
    field(:key, :string)
    field(:related_keys, {:array, :string})
    has_many(:responses, Budgie.Response)

    timestamps()
  end
end
