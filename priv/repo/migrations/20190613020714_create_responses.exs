defmodule Budgie.Repo.Migrations.CreateResponses do
  use Ecto.Migration

  def change do
    create table(:responses) do
      add(:answer, :text)
      add(:keyword_id, references(:keywords, on_delete: :delete_all))
    end

    create(index(:responses, [:id]))
  end
end
