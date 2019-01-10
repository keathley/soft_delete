defmodule SoftDelete.Widget do
  use Ecto.Schema
  import Ecto.Changeset
  import Ecto.Query, only: [from: 2]

  schema "widgets" do
    field :name, :string
    field :deleted, :boolean, default: false
  end

  def mark_for_deletion(widget) do
    widget
    |> change(%{deleted: true})
  end

  def alive(query) do
    from w in query, where: w.deleted == false
  end
end

