defmodule SoftDelete.AliveWidget do
  use Ecto.Schema

  schema "alive_widgets" do
    field :name, :string
  end
end

