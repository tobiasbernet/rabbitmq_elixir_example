defmodule Senderli.MixProject do
  use Mix.Project

  def project do
    [
      app: :senderli,
      version: "0.1.0",
      elixir: "~> 1.9.1",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      applications: [:amqp],
      extra_applications: [:logger],
      mod: {Senderli.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:amqp, "~> 1.3.2"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
