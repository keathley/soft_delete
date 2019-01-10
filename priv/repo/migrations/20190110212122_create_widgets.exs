defmodule SoftDelete.Repo.Migrations.CreateWidgets do
  use Ecto.Migration

  def change do
    create table(:widgets) do
      add :name, :string
      add :deleted, :boolean, default: false
    end

    create index(:widgets, [:deleted])
  end
end
