# RAAS-Ø — The Reflexive Apophatic Constructor Synthesis

**RAAS-Ø** is the paraconsistent unification of four theoretical frameworks:

* **RAT — Reflexive Assembly Theory**: *The kinetic layer.* A reflexive-catalytic rate engine with mass conservation and Arrhenius bounds — the only layer with equations of motion.
* **RAT-ACT**: *The statics layer.* A resource-enriched partial category of presence, priced by the resource functor $\mathcal{F}_{\mathbf{R}}$ and animated by the density monad $\mathbf{T}_{\gamma}$.
* **ACT-Ø — Anti-Constructor Theory**: *The absence layer.* The category of the defect: nodal voids, scissors morphisms, and boundary cavity noise.
* **RAAS — Reflexive Apophatic Assembly System**: *The paradox layer.* Tripartite Borromean nodes that hold contradictions without logical explosion.

---

## Method

Constructed by *via negativa*, grounded in dialetheism, and composed under paraconsistent logic:

* **Via negativa** — The synthesis is defined by what it cannot be, what is missing, and what is parasitic. See [`docs/00-method.md`](docs/00-method.md).
* **Dialetheism** — Contradictions are held as true, not resolved. Five dialetheias are permanent fixtures of the framework. See [`docs/05-synthesis.md`](docs/05-synthesis.md).
* **Paraconsistent composition (non-Hegelian)** — No sublation. Explosion containment is topological (Borromean), not logical: every contradiction is localised to a tripartite node and is inert unless bracketed by a third loop.

---

## The Seven Unified Laws

1. **Bounded Capability** — No constructor keeps an empty degradation set across infinite cycles without nested compensation.
2. **Quantized Monadic Cost** — $\mathcal{F}_{\mathbf{R}}(\mu) \succ \mathbf{0}$; self-preservation is never free.
3. **Directed Quantum Proximity** — Distance between states is the infimum resource join, not geometry.
4. **Complete Apophasis** — A defect's capabilities are dictated exclusively by what it excludes; permanence ($\eta = \emptyset$) iff $S = 0$.
5. **Resource Cliff** — Composition beyond the local sheaf bound maps to $0_{\mathbf{Res}}$ and the loop snaps instantly.
6. **Borromean Paradox Stability** — A contradiction is admissible iff localised to a tripartite node with $\det(\mathbf{M}_\Delta) > 0$; explosion is a local cliff.
7. **Reflexive Selection** — Matter reshapes its own transition landscape; open-ended evolution exists only between the noise regime and the monoculture regime.

---

## Repository Layout

```text
README.md               This file
NOTICE.md               Bifurcated licensing + commercial dual-license terms
LICENSE                 AGPL-3.0 (code strata)
docs/LICENSE            CC BY 4.0 (specification strata)
docs/00-method.md       Via negativa / dialetheism / paraconsistency charter
docs/01-presence.md     Cat_RAT-ACT: objects, monad, laws of presence
docs/02-absence.md      Cat_∅: nodal defects, scissors morphisms
docs/03-dynamics.md     RAT kinetic layer as monad instantiation
docs/04-paradox.md      Borromean nodes, M_Δ, trajectory law
docs/05-synthesis.md    Dialetheias, identity boundary, fatal inputs
docs/archive/           The four original source documents
src/                    Haskell blueprint (Res, Category, Borromean)
sim/det_collapse.py     Paradox collapse tracker
cases/                  Applied cliff analyses
```

---

## Build & Run

### Haskell Guards (GHC)

```bash
cd src
runghc Borromean.hs
```

### Collapse Simulation (Standard Library Only)

```bash
python3 sim/det_collapse.py
```

---

## Status

* **Specification**: Complete ([`docs/00-05`](docs/)).
* **Haskell Blueprint**: `Res.hs`, `Category.hs`, `Borromean.hs`.
* **Simulation**: `det_collapse.py` — Detonation boundary $\Phi_{AB} \approx 2.5\text{ rad}$; degradation cliff at overlap $\approx 0.9$; trajectory law (collapse is irreversible without paid recovery).
* **Open**: Presence $\leftrightarrow$ Absence adjunction functor equations ([`docs/05-synthesis.md §7`](docs/05-synthesis.md)).

---

## Licensing

**Bifurcated**. 

* **Specifications and whitepapers** ([`docs/`](docs/)) are licensed under **Creative Commons Attribution 4.0 International (CC BY 4.0)**.
* **Code, engines, and simulators** ([`src/`](src/), [`sim/`](sim/), [`cases/`](cases/)) are licensed under the **GNU Affero General Public License v3.0 (AGPL-3.0)** with a commercial dual-licensing option. 

See [`NOTICE.md`](NOTICE.md) for full terms.
