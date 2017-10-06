defmodule MockInput.Mixfile do
  use Mix.Project

  def project do
    [
      app: :mock_input,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:mock, "~> 0.2.0", only: :test}
    ]
  end
end
