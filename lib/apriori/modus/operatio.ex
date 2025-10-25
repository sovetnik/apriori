defmodule Apriori.Modus.Operatio do
  @moduledoc """
  **Operatio** — an internal reasoning request 
  (Kant’s *theoretical reason* / *theoria*).

  Use when the Umwelt must **answer** a `Quaestio` by applying a dedicated
  reasoning module (the *query*): derive or retrieve a `Forma`
  (`Essentia | Collectio | Propria | Sententia`). Produced by **Verstand**
  from a `Quaestio` once the query module is resolved; executed by
  **Wirkwelt** to yield `Responsum`, `Negatum`, or `Silentia`.

  *Relation to `Actio`*: parallel pole of the same action-field (*actus*):
  **Operatio** shapes knowledge (theoria); 
  **Actio** effects the world (praxis).

  ### When to use
  - A question is classified and routed to a concrete query module.
  - Arguments are shaped/validated for knowledge production 
  (no external change intended).

  ### Invariants
  - `signa` are preserved end-to-end.
  - `query` is a concrete module that computes and 
  `formatio/1`-shapes the `Forma`.
  - No transport/side effects occur here; **Wirkwelt** performs 
  execution and returns the outcome.
  """

  alias Apriori.Phaenomenon

  defstruct signa: {"unknown", "unknown"},
            query: __MODULE__,
            typus: "essentia",
            argumenta: %{}

  @type t :: %__MODULE__{
          signa: Phaenomenon.signa(),
          query: module(),
          typus: String.t(),
          argumenta: map()
        }
end
