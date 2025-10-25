defmodule Apriori.Forma.Essentia do
  @moduledoc """
  **Essentia** — *unitas* (Kant: *Einheit*): una entitas cum structura interna cognita.

  Usa quando responsum est **unum objectum concretum**.
  Praefere `Collectio` pro listis, `Propria` pro catalogis completis, `Sententia` pro textu.
  """

  defstruct kind: "",
            corpus: %{}

  @type t :: %__MODULE__{
          kind: String.t(),
          corpus: map()
        }
end
