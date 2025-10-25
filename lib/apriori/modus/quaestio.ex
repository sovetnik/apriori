defmodule Apriori.Modus.Quaestio do
  @moduledoc """
  **Quaestio** — quaestio typata pro cognitione:
  *de essentia*, *de proprietatibus*, *de modo*, etc.

  Usa quando Umwelt debet **cognitionem recuperare vel derivare**.
  Reddit `Responsum` (cum `Essentia`, `Collectio`, `Propria`,
  `Sententia`) vel `Negatum` (saepe cum `Absentia`).

  **Typus classificatio**:
  - **Quaestio de essentia** — "Quid est?" (*What is it?*)
  - **Quaestio de proprietatibus** — "Qualis est?" (*What is it like?*)
  - **Quaestio de causis** — "Cur?" (*Why?*)
  - **Quaestio de modo** — "Quomodo?" (*How?*)
  - **Quaestio de loco** — "Ubi?" (*Where?*)
  - **Quaestio de tempore** — "Quando?" (*When?*)
  - **Quaestio de quantitate** — "Quantus?" (*How many/much?*)
  - **Quaestio de persona** — "Quis?" (*Who?*)
  - **Quaestio de voluntate** — "Vultne?" (*Does it will/intend?*)
  """

  alias Apriori.Phaenomenon

  defstruct signa: {"unknown", "unknown"},
            typus: "essentia",
            subjectum: "res",
            praedicatum: nil

  @type t() :: %__MODULE__{
          signa: Phaenomenon.signa(),
          typus: String.t(),
          subjectum: String.t(),
          praedicatum: any()
        }
end
