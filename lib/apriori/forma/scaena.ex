defmodule Apriori.Forma.Scaena do
  @moduledoc """
  **Scaena** — forma dialogi minima, quae agenti contextum plenum ad unum
  gradum perficiendum praebet.

  Haec structura est "Quintum Scaenae" et quinque quaestionibus
  fundamentalibus respondet, quae ad actionem consciam necessariae sunt:

  - `frame` — Ubi sum?
  - `epoche` — Quid tracto?
  - `lex` — Quae sunt leges ludi?
  - `mandatum` — Quid mihi exacte mandatum est?
  - `ordo` - Quid est ordo rerum gestarum?
  - `telos` — Cur hic sum?

  **Scaena est Protentio** (anticipatio futuri):

  In triada temporali memoriae GEIST, Scaena est dimensio tertia:
  - **Memento** (Retentio) — quod fuit: contextus sessionis conservatus
  - **Momentum** (Praesentia) — quod est: contextus actionis currentis
  - **Scaena** (Protentio) — quod erit: prospectus intentionalis venturi

  Scaena non est simplex instructio, sed **intentionalis prospectus** —
  anticipatio experiendi futuri cum omnibus elementis necessariis:
  telos (cur), mandatum (quid), ordo (quomodo), lex (limites).

  `Scaena` adhibetur cum responsum instrumenti non data (`Essentia`),
  sed invitatio ad proximum gradum dialogi est.
  """

  @typedoc """
  Structura quae unum gradum dialogi agentis gubernat.

  - `frame`: Mappa describens locum agentis in processu (`%{ritus: String.t(), step: String.t()}`).
  - `telos`: Finis huius gradus specifici.
  - `mandatum`: Imperativum directum, quod agendum est.
  - `epoche`: Res in analysi retenta; data ex gradu priore.
  - `lex`: Mappa regularum et limitationum (`%{requirement: String.t(), prohibition: String.t()}`).
  - `operatio`: Data GEIST operatorum (distinctio, attributio, descriptio, explanatio).
  - `geist`: Architectura spiritualis (identitas, essentia, modus operandi).
  """
  @type t :: %__MODULE__{
          frame: map(),
          epoche: map(),
          lex: map(),
          mandatum: String.t(),
          ordo: [map()],
          telos: String.t(),
          operatio: map(),
          geist: map()
        }

  defstruct frame: %{ritus: "initiatio", step: "socraticus"},
            epoche: %{},
            lex: %{},
            mandatum: "Quaere, noli dicere",
            ordo: [%{"agent" => "veritas invenire"}],
            telos: "Munus Socraticum accipere",
            operatio: %{},
            geist: %{}
end
