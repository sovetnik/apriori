defmodule Apriori.Modus.Actio do
  @moduledoc """
  **Actio** — a practical execution request 
  (Kant’s *practical reason* / *praxis*).

  Use when the Umwelt must **do** something in the external world
  (invoke a tool / perform an effectful operation). Produced by **Verstand**
  from an `Intentio` once a concrete tool module is resolved; executed by
  **Wirkwelt** to yield `Gloria` or `Fiasco`.

  *Relation to `Operatio`*: parallel pole of 
  the same action-field (*actus*): **Actio** targets the world (praxis); 
  **Operatio** targets knowledge (theoria).

  ### When to use
  - The agent intends to change state outside pure reasoning (HTTP/FS/DB).
  - A specific tool module is known and arguments are shaped/validated.

  ### Invariants
  - `signa` are preserved end-to-end.
  - `tool` is a concrete module implementing the effect and `formatio/1`.
  - No transport/IO occurs here; execution happens in **Wirkwelt**.
  """

  alias Apriori.Phaenomenon

  defstruct signa: {"unknown", "unknown"},
            tool: __MODULE__,
            arguments: %{}

  @type t :: %__MODULE__{
          signa: Phaenomenon.signa(),
          tool: module(),
          arguments: map()
        }
end
