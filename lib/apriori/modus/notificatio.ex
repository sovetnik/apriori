defmodule Apriori.Modus.Notificatio do
  @moduledoc """
  **Notificatio** — *passio* externa (impactus) quae informat sed non petit responsum.

  Usa pro eventibus ut `"initialized"`, `"cancelled"`, vel pings protocollares,
  quae debent **agnosci** sed typice producunt `Silentia` (204) potius quam contentum.
  """

  alias Apriori.Phaenomenon

  defstruct signa: {"unknown", "unknown"},
            typus: "unknown",
            subjectum: "unknown",
            payload: %{}

  @type t() :: %__MODULE__{
          signa: Phaenomenon.signa(),
          typus: String.t(),
          subjectum: String.t(),
          payload: map()
        }
end
