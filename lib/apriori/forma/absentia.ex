defmodule Apriori.Forma.Absentia do
  @moduledoc """
  **Absentia** — *defectus* explicitus entitatis expectatae (Kant: *Mangel*), cum hints
  optionalibus et proximis pro recuperatione.

  Usa ad **dicendum "non inventum" ut forma primae classis**: reporta quid quaesitum est (`quid`),
  cuius generis (`kind`), optionaliter duce agentem (`hint`) et propone alternativas (`proximis`).
  Praefere hoc super tuples ad-hoc `nil`/error ad conservandum rationem structuratam.
  """

  @type t :: %__MODULE__{
          kind: String.t(),
          quid: String.t(),
          hint: String.t() | nil,
          proximis: [String.t()]
        }

  defstruct kind: "directions",
            quid: "somewhere",
            hint: "somewhere not found, but what we have",
            proximis: ~w(left right)
end
