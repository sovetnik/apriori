defmodule Apriori.Forma.Sententia do
  @moduledoc """
  **Sententia** — *judicium* (Kant: *Urteil*): declaratio/phrasis textualis.

  Usa quando responsum est **textus purus** (nuntius, nota, confirmatio), non data structurata.
  Praefere `Essentia` pro objectis, `Collectio` pro listis, `Propria` pro catalogis completis.
  """

  @type t :: %__MODULE__{text: String.t()}
  defstruct text: "Sapienti sat"
end
