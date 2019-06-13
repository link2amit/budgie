defmodule Budgie.Services.Schema.Response do
  import Ecto.Changeset
  use Ecto.Schema
  alias Budgie.Services.Schema.{Keyword, Response}

  schema "response" do
    field(:answer, :string)
    belongs_to(:keyword, Keyword)

    timestamps()
  end

  def changeset(%Response{} = res, attrs) do
    res
    |> cast(attrs, [
      :answer,
      :keyword_id
    ])
  end
end
