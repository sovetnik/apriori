defmodule Apriori.Modus.Silentia do
  @moduledoc """
  **Silentia** — the agent’s philosophical silence: address (`signa`) 
  and human cause.

  Use when no explicit content should be returned (ack, irrelevance, 
  not implemented, cancelled). Symmetric to `Responsum`: direct struct, 
  explicit fields, no hidden builders.
  """
  alias Apriori.Phaenomenon

  @enforce_keys [:signa]

  # Mapping of cause tags to human-readable philosophical phrases.
  @causa %{
    initialized: "Initium silentio celebramus.",
    notification: "Silentium est responsum sapientis.",
    cancelled: "Eventum vacuum, responsum vacuum.",
    not_implemented: "Non facimus drama ex nihilo.",
    irrelevant: "Omnia silentio transeunt.",
    internal: "Quod intrat, intus manet."
  }

  @typedoc "Stable cause tag for Silentia"
  @type causa_tag ::
          :initialized
          | :notification
          | :cancelled
          | :not_implemented
          | :irrelevant
          | :internal

  defstruct signa: {"unknown", "unknown"},
            cause: "Nullius in Verba",
            details: %{}

  @type t() :: %__MODULE__{
          signa: Phaenomenon.signa(),
          cause: String.t(),
          details: map()
        }

  @doc """
  Get human-readable cause phrase for a given tag.
  """
  @spec causa(causa_tag) :: String.t()
  def causa(tag) do
    Map.get(@causa, tag, "Nullius in Verba")
  end
end
