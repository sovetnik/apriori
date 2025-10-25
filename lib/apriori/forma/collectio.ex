defmodule Apriori.Forma.Collectio do
  @moduledoc """
  **Collectio** — *multiplicitas* (Kant: *Vielheit*): series homogenea elementorum eiusdem generis.

  Usa quando responsum est **lista** (pars/slice arbitraria) entitatum domenialium.
  Praefere `Propria` pro catalogis completis, `Essentia` pro una entitate, `Sententia` pro textu.
  """
  defstruct kind: "item",
            clavis: "items",
            corpus: %{}

  @type t :: %__MODULE__{
          kind: String.t(),
          clavis: String.t(),
          corpus: list() | map()
        }
end
