defmodule Apriori.Forma.Propria do
  @moduledoc """
  **Propria** — *proprietates inherentes* (Kant: *Allheit*, totalitas): catalogus **exhaustivus** pro genere.

  Usa quando responsum debet esse **series completa** (e.g., `tools`, `prompts`, `resourceTemplates`).
  Praefere `Collectio` pro listis partialibus, `Essentia` pro una entitate, `Sententia` pro textu.
  """

  defstruct kind: "",
            corpus: []

  @type t :: %__MODULE__{
          kind: String.t(),
          corpus: list()
        }
end
