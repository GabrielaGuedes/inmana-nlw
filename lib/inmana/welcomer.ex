defmodule Inmana.Welcomer do
  def welcome(%{"name" => name, "age" => age}) do
    age = String.to_integer(age)

    name
    |> String.trim()
    |> String.downcase()
    |> evaluate(age)
  end

  defp evaluate("tuk", 22) do
    {:ok, "You are very special, tuk"}
  end

  defp evaluate(name, age) when age >= 18 do
    {:ok, "Welcome, #{name}"}
  end

  defp evaluate(name, _) do
    {:error, "Not allowed, #{name}"}
  end
end
