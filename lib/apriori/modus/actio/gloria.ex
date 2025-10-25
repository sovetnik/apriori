defmodule Apriori.Modus.Actio.Gloria do
  @moduledoc """
  **Gloria** — successful outcome of an *intentio* (accomplished action), 
  carrying a domain `corpus` in one of the **Forma** 
  (e.g., `Essentia`, `Collectio`, `Propria`, `Sententia`).

  Use to **return execution result** of a tool/action; transport will 
  serialize the `corpus` into JSON-RPC `result` according 
  to `Aussenwelt` rules for the given form.
  """

  alias Apriori.Forma.{Collectio, Essentia, Propria, Sententia}
  alias Apriori.Phaenomenon

  defstruct signa: {"unknown", "unknown"},
            corpus: %Essentia{}

  @type t() :: %__MODULE__{
          signa: Phaenomenon.signa(),
          corpus:
            Essentia.t()
            | Collectio.t()
            | Propria.t()
            | Sententia.t()
        }
end
