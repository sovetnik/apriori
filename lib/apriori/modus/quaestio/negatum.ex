defmodule Apriori.Modus.Quaestio.Negatum do
  @moduledoc """
  **Negatum** — negative answer to a *quaestio*: 
  an explicit **absence** represented by `Absentia`.

  Use when the requested entity/knowledge is **not found** 
  or intentionally withheld. Keeps absence first-class (structured) 
  rather than ad-hoc `nil`/tuples.
  """

  alias Apriori.Forma.Absentia
  alias Apriori.Phaenomenon

  defstruct signa: {"unknown", "unknown"},
            causa: %Absentia{}

  @type t() :: %__MODULE__{
          signa: Phaenomenon.signa(),
          causa: Absentia.t()
        }
end
