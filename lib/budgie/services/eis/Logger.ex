defmodule Budgie.Services.Eis.Logger do
  alias Budgie.Services.Stemmer

  def log(value) do
    Stemmer.stem(value.content)
  end
end
