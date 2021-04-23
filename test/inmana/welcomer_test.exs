defmodule Inmana.WelcomerTest do
  use ExUnit.Case

  alias Inmana.Welcomer

  describe "welcome/1" do
    test "when the user is special, returns a special message" do
      params = %{"name" => "tuk", "age" => "22"}

      result = Welcomer.welcome(params)

      assert result == {:ok, "You are very special, tuk"}
    end

    test "when the user is not special, returns a message" do
      params = %{"name" => "tukinha", "age" => "25"}

      result = Welcomer.welcome(params)

      assert result == {:ok, "Welcome, tukinha"}
    end

    test "when the user is under age, returns not allowed" do
      params = %{"name" => "tukinha", "age" => "2"}

      result = Welcomer.welcome(params)

      assert result == {:error, "Not allowed, tukinha"}
    end
  end
end
