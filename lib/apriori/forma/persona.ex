defmodule Apriori.Forma.Persona do
  @moduledoc """
  **Persona** — a distinguished *other* in dialogue (Kant: *Gegenüber*): an external agent/client
  identified by name, version, protocol, and declared capabilities.

  Use when the Umwelt must **address or remember the identity and powers of the peer**:
  during handshake/`Salutatio`, routing per-client behavior, or auditing interactions.
  Not for domain entities; prefer `Essentia`/`Collectio` for those.
  """

  defstruct id: "unknown",
            nomen: "Eris",
            versio: "chaos",
            protocolum: "discord",
            capacitas: %{},
            historia: []

  @type t() :: %__MODULE__{
          id: String.t(),
          nomen: String.t(),
          versio: String.t(),
          protocolum: String.t(),
          capacitas: map(),
          historia: list()
        }
end
