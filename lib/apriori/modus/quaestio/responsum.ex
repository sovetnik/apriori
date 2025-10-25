defmodule Apriori.Modus.Quaestio.Responsum do
  @moduledoc """
  **Responsum** — positive answer to a *quaestio*, carrying `wisdom` in one
  of the **Forma** (`Essentia`, `Collectio`, `Propria`, `Sententia`).

  Use to **return knowledge** derived or retrieved for a question;
  transport will serialize `wisdom` into JSON-RPC `result` according
  to `Aussenwelt` rules for the given form.
  """

  alias Apriori.Forma.{Collectio, Essentia, Propria, Sententia}
  alias Apriori.Phaenomenon

  defstruct signa: {"unknown", "unknown"},
            wisdom: "Nullius in Verba"

  @type t() :: %__MODULE__{
          signa: Phaenomenon.signa(),
          wisdom:
            Essentia.t()
            | Collectio.t()
            | Propria.t()
            | Sententia.t()
        }
end
