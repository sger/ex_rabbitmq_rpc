defmodule ExRabbitMQ.RPC.Mixfile do
  use Mix.Project

  def project do
    [
      app: :ex_rabbitmq_rpc,
      version: "1.0.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      name: "ExRabbitMQ RPC",
      source_url: "https://github.com/StoiximanServices/ex_rabbitmq_rpc",
      homepage_url: "https://github.com/StoiximanServices/ex_rabbitmq_rpc/blob/master/README.md",
      docs: [logo: "logo.png"],
      description: description(),
      package: package()
    ]
  end

  def application do
    []
  end

  defp deps do
    [
      {:credo, "~> 0.8", runtime: false},
      {:dialyxir, "~> 0.5", runtime: false},
      {:ex_doc, "~> 0.18", runtime: false},
      {:exrabbitmq, "~> 2.11"},
      {:poison, "~> 3.1", only: :test},
      {:uuid, "~> 1.1"}
    ]
  end

  defp description do
    """
    RabbitMQ RPC Client and Server library for Elixir.
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md", "LICENSE"],
      maintainers: ["indyone"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/StoiximanServices/ex_rabbitmq_rpc"}
    ]
  end
end
