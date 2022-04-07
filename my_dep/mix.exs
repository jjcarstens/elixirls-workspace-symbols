defmodule MyDep.MixProject do
  use Mix.Project

  def project do
    [
      app: :my_dep,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {MyDep.Application, []},
      start_phases: [migrate: []]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ecto, "~> 3.7"},
      {:ecto_sqlite3, "~> 0.7"},
      {:exqlite, "~> 0.8.3"}
    ]
  end
end
