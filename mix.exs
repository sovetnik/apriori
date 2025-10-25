defmodule Apriori.MixProject do
  use Mix.Project

  def project do
    [
      app: :apriori,
      version: "0.1.0",
      elixir: "~> 1.18",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      source_url: "https://github.com/sovetnik/apriori"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: []
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 1.6", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 1.0", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.38", only: :dev, runtime: false}
    ]
  end

  defp description do
    """
    Transcendental optics of cognition.

    A priori forms and modes through which cogitative systems \
    order and comprehend phenomena.
    """
  end

  defp package do
    [
      exclude_patterns: [".DS_Store"],
      files: ~w(mix.exs README.md lib),
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/sovetnik/apriori"
      }
    ]
  end
end
