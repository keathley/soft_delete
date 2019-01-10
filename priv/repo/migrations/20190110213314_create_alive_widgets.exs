defmodule SoftDelete.Repo.Migrations.CreateAliveWidgets do
  use Ecto.Migration

  @up "CREATE VIEW alive_widgets AS select id, name from widgets where not deleted;"
  @down "DROP VIEW IF EXISTS alive_widgets;"

  def change do
    execute(@up, @down)
  end
end

