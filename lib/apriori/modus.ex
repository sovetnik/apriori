defmodule Apriori.Modus do
  @moduledoc """
  **Modus** — *genus actus* applicatus ad phaenomenon ingressum, electus
  in **Merkwelt** per *Distinctio*. Determinat **quomodo** systema se refert
  ad eventum: interrogare, agere, vel informare.

  Usa **Modus** ad dirigendum processationem et fixandum contractus resultati:
  - `Quaestio` → cognitio: `Responsum` (cum Forma:
    `Essentia | Collectio | Propria | Sententia`)
    vel `Negatum` (cum `Absentia`).
  - `Intentio` → executio: `Gloria` (successus cum Forma)
    vel `Fiasco` (defectus cum `code/cause/details`).
  - `Notificatio` → informatio tantum: `Silentia` (agnitio/silentium, code + causa).
  - `Salutatio` → salutatio: ligat `Persona` ad sessionem.

  **Canon (moduli et roles)**:
  - `Apriori.Modus.Quaestio` — quaestio typata (`typus`, `subjectum`,
    optionale `praedicatum`).
  - `Apriori.Modus.Intentio` — intentio invocandi instrumentum
    (`telos`, `arguments`).
  - `Apriori.Modus.Notificatio` — impactus/eventus externus (nullus contentus expectatur).
  - `Apriori.Modus.Salutatio` — salutatio/handshake; registrat `Persona` paris.
  - Exitus:
    - `Quaestio.Responsum` | `Quaestio.Negatum`
    - `Intentio.Gloria` | `Intentio.Fiasco`
    - `Silentia` (pro notificationibus neutralibus)

  Vide etiam: `Apriori.Forma` pro definitionibus formarum contentus
  et `Aussenwelt` pro serializatione JSON-RPC.
  """
end
