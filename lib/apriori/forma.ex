defmodule Apriori.Forma do
  @moduledoc """
  **Forma** — Structura Contentus

  **Forma** definit *structuram contentus* — quomodo significatio tenetur et redditur —
  in contrasto ad **Modus**, qui describit *genus actus* (quaestio, intentio, notificatio).

  **Propositum**: Formae sunt **ontologia responsionum** et repraesentationum internarum:
  determinant **in qua forma** entitas vel responsum exsistit et quomodo serializatur ad extra.

  **Canon** (sub `lib/skull/forma/`):
  - `Essentia` — *unitas* singularis (Kant: *Einheit*): `{kind => corpus}`.
  - `Collectio` — *multiplicitas* entitatum (Kant: *Vielheit*): `{clavis => [...]}` (series homogenearum).
  - `Propria` — *proprietates/metadata*: attributa structurata (`kind`, `corpus`).
  - `Sententia` — *judicium* (Kant: *Urteil*): contentus textualis (`text`).
  - `Absentia` — *defectus* entitatis (Kant: *Mangel*): explicitus "non inventum" cum hints (`kind`, `quid`, `hint`, `proximis`).
  - `Persona`  — *par* (peer agent): identitas et capacitates.

  > Breviter: **Forma = "in qua forma significatio tenetur/redditur?"**

  **Relatio ad strata alia**:
  - **Merkwelt** distinguit phaenomenon et eligit *Modus*.
  - **Wirkwelt** exsequitur intentionem et producit resultatum in una ex formis.
  - **Aussenwelt** serializat formam in JSON-RPC pro mundo externo.

  **Conceptus relati**:
  - Vide `Apriori.Modus` — *genus actus* (quaestio, intentio, notificatio).
  - Paria exituum pro modo:
    - Quaestio → `Responsum` (Essentia / Collectio / Absentia / …) vel `Negatum` (Absentia).
    - Intentio → `Gloria` / `Fiasco`.
    - Notificatio → `Silentia`.

  **Exempla mentalia**:
  - Reddit projectum specificum: `Essentia{kind: "project", corpus: %{...}}`
  - Reddit listam projectorum: `Collectio{clavis: "projects", corpus: [...]}`
  - Dicit "non inventum, sed haec proxima sunt": `Absentia{kind: "prompt", quid: "project.foo", proximis: ["project.intake"]}`
  """

  alias Apriori.Forma.{
    Absentia,
    Collectio,
    Essentia,
    Propria,
    Scaena,
    Sententia
  }

  @typedoc """
  All possible Forma types.
  """
  @type t ::
          Absentia.t()
          | Collectio.t()
          | Essentia.t()
          | Propria.t()
          | Scaena.t()
          | Sententia.t()
end
