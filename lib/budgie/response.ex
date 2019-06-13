defmodule Budgie.Response do
  use Ecto.Schema

  schema "response" do
    field(:answer, :string)
    belongs_to(:keyword, Budgie.Keyword)

    timestamps()
  end

  def changeset(%Response{} = res, attrs) do
    msc
    |> cast(attrs, [
      :answer,
      :keyword_id
    ])
    |> validate_required([:keyword_id])
  end
end
