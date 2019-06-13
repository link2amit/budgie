defmodule Budgie.Services.BudgieQueries do
  alias Budgie.Repo
  alias Ecto.Multi
  import Ecto.Query
  alias Budgie.Schema.{Response, Keyword}

  @doc """
    creates keyword

    ## Parameters
    - keyword: The keyword struct.
  """
  def create_keyword(keyword) do
    %Keyword{}
    |> Keyword.changeset(keyword)
    |> Repo.insert()
  end

  @doc """
    creates response

    ## Parameters
    - response: The response struct.
  """
  def create_response(response) do
    %Response{}
    |> Response.changeset(response)
    |> Repo.insert()
  end

  @doc """
    Gets responses by keyword_id

    ## Parameters
    - keyword_id: The id of the keyword.
  """

  def get_responses(keyword_id) do
    Repo.all(
      from(
        e in Response,
        where: e.keyword_id == ^keyword_id
      )
    )
  end
end
