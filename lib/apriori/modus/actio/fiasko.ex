defmodule Apriori.Modus.Actio.Fiasco do
  @moduledoc """
  **Fiasco** — unsuccessful outcome of an *intentio* (failure/exception), 
  with machine `code`, human-readable `cause`, and optional `details`.

  Use to **signal execution failure** of a tool/action: transport will 
  serialize it as JSON-RPC `error` with `message` and `data` 
  derived from this struct.
  """

  alias Apriori.Phaenomenon

  defstruct signa: {"unknown", "unknown"},
            # code: 422,
            cause: "Techno-heresy",
            details: %{}

  @type t() :: %__MODULE__{
          signa: Phaenomenon.signa(),
          cause: String.t(),
          details: map()
        }
end
