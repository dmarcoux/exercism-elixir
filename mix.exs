defmodule ExercismElixirUmbrella.MixProject do
  use Mix.Project

  def project do
    [
      apps_path: "apps",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases()
    ]
  end

  defp deps do
    []
  end

  defp aliases do
    [
      # Some exercises have pending tests and I prefer to always run all of them without having to bother with typing `--include pending` all the time
      test: "test --include pending"
    ]
  end
end
