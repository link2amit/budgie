defmodule Budgie.Services.Schema.Keyword do
  import Ecto.Changeset
  use Ecto.Schema
  alias Budgie.Services.Schema.{Keyword, Response}

  schema "keyword" do
    field(:key, :string)
    field(:related_keys, {:array, :string})
    has_many(:responses, Response)

    timestamps()
  end

  def changeset(%Keyword{} = keyword, attrs) do
    keyword
    |> cast(attrs, [
      :key,
      :related_keys
    ])
  end
end
