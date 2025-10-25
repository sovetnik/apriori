defmodule Apriori.Modus.Salutatio do
  @moduledoc """
  **Salutatio** — actus salutandi qui ligat `Persona` ad sessionem.

  Usa ad initializationem protocollarem ad **registrandum identitatem paris
  et capacitates**, producens `Persona` pro subsequente directione/authorizatione.
  """

  alias Apriori.Forma.Persona
  alias Apriori.Phaenomenon

  defstruct signa: {"adept", 1},
            persona: %Persona{}

  @type t() :: %__MODULE__{
          signa: Phaenomenon.signa(),
          persona: Persona.t()
        }
end
