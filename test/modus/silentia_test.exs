defmodule Apriori.Modus.SilentiaTest do
  use ExUnit.Case, async: true

  alias Apriori.Modus.Silentia

  describe "causa/2" do
    test "returns binary phrase" do
      assert is_binary(Silentia.causa(:notification))
    end

    test "returns different phrases for different tags" do
      refute Silentia.causa(:initialized) ==
               Silentia.causa(:notification)
    end

    test "returns default phrase for unknown tag" do
      assert "Nullius in Verba" == Silentia.causa(:unknown_tag)
    end
  end
end
