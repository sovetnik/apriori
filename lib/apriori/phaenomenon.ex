defmodule Apriori.Phaenomenon do
  @moduledoc """
  **Phaenomenon** — id est *eventus apparens*,  
  simplex et ante interpretationem positus.

  Phaenomenon est **quod apparet** — primum momentum praesentiae:  
  nondum sensu, nondum intellectu, sed iam in orbe visibili positum.  
  Nihil aliud continet nisi **unde** ortum est et **quid** se esse dicit:
  `signa`, `method`, `params`.

  Non est *mandatum* (quia voluntatem praesumit),  
  nec *nuntius* (quia communicationem implicat);  
  est solum **apparitio** — factum ipsius advenientiae.

  ## Campi
  - `signa`  — origo eventus: `{source, id}`  
               (`source`: e.g. `"zed"`, `"gemini"`, `"inspector"`;  
               `id`: indicium clientis vel transportis)
  - `method` — verbum JSON-RPC `"method"`, uti acceptum est
  - `params` — onus JSON-RPC `"params"` (mappa argumentorum)

  ## Propositum
  Esse **involucrum purum et neutrum** eventus ingredientis,  
  ut strata superiora postea possint hunc actum  
  ordinare, interpretari, et exsequi sine cura vehiculi.

  ## Invariantes
  - Nullae operationes externae, nullus IO, pura data.
  - `signa` semper adest et servatur per transitum.
  - `params` semper mappa (adhibe `%{}` si vacuum).
  - `method` chorda non vacua, ut a cliente missa est.

  ## Exempla
      iex> %Apriori.Phaenomenon{
      ...>   signa: {"inspector", "3"},
      ...>   method: "prompts/list",
      ...>   params: %{"_meta" => %{"progressToken" => 3}}
      ...> }

      iex> %Apriori.Phaenomenon{
      ...>   signa: {"zed", 42},
      ...>   method: "tools/call",
      ...>   params: %{"name" => "projects.show", "arguments" => %{"project_id" => 787}}
      ...> }
  """

  @typedoc """
    Message address: `{source, id}`; 
    `source` mirrors the client's endpoint,
    `id` mirrors the client's JSON-RPC id.
  """
  @type signa :: {String.t(), String.t() | integer()}

  defstruct signa: {"unknown", "unknown"}, method: "unknown", params: %{}

  @typedoc "Raw incoming event handed to Merkwelt for Distinctio."
  @type t() :: %__MODULE__{signa: signa(), method: String.t(), params: map()}
end
