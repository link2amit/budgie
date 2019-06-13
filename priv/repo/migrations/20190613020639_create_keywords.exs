defmodule Budgie.Repo.Migrations.CreateKeywords do
  use Ecto.Migration

  def change do
    create table(:keywords) do
      add(:key, :string)
      add(:related_keys, {:array, :string})
    end

    create(index(:keywords, [:id]))
  end
end
