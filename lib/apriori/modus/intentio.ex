defmodule Apriori.Modus.Intentio do
  @moduledoc """
  **Intentio** — intentio agentis *facere* aliquid (invocare instrumentum,
  perficere operationem).

  Usa quando Umwelt debet **exsequi** actionem concretam dato `telos`
  et `arguments`, producens `Gloria` in successu vel `Fiasco` in defectu.
  """

  alias Apriori.Phaenomenon

  defstruct signa: {"unknown", "unknown"},
            telos: "code/show",
            arguments: %{}

  @type t() :: %__MODULE__{
          signa: Phaenomenon.signa(),
          telos: String.t(),
          arguments: map()
        }
end
