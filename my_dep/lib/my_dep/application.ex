defmodule MyDep.Application do
  @moduledoc false

  use Application

  alias Ecto.Migrator

  @impl Application
  def start(_type, _args) do
    children = [
      MyDep.Repo
    ]

    opts = [strategy: :one_for_one, name: MyDep.Supervisor]
    Supervisor.start_link(children, opts)
  end

  @impl Application
  def start_phase(:migrate, _type, _args) do
    case Migrator.with_repo(MyDep.Repo, &Migrator.run(&1, :up, all: true)) do
      {:ok, _, _} -> :ok
      err -> err
    end
  end
end
