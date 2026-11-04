# RAAS-Ø — The Reflexive Apophatic Constructor Synthesis

RAAS-Ø is the paraconsistent unification of four theoretical frameworks:

- **RAT — Reflexive Assembly Theory**: the kinetic layer. A reflexive-catalytic rate engine with mass conservation and Arrhenius bounds — the only layer with equations of motion.
- **RAT-ACT**: the statics. A resource-enriched partial category of presence, priced by the resource functor F_R and animated by the density monad T_γ.
- **ACT-Ø — Anti-Constructor Theory**: the absence layer. The category of the defect: nodal voids, scissors morphisms, and boundary cavity noise.
- **RAAS — Reflexive Apophatic Assembly System**: the paradox layer. Tripartite Borromean nodes that hold contradictions without logical explosion.

## Method

Constructed by via negativa, grounded in dialetheism, composed under paraconsistent logic:

- **Via negativa** — the synthesis is defined by what it cannot be, what is missing, and what is parasitic. See docs/00-method.md.
- **Dialetheism** — contradictions are held as true, not resolved. Five dialetheias are permanent fixtures of the framework. See docs/05-synthesis.md.
- **Paraconsistent composition (non-Hegelian)** — no sublation. Explosion containment is topological (Borromean), not logical: every contradiction is localised to a tripartite node and is inert unless bracketed by a third loop.

## The Seven Unified Laws

1. **Bounded Capability** — no constructor keeps an empty degradation set across infinite cycles without nested compensation.
2. **Quantized Monadic Cost** — F_R(μ) ≻ 0; self-preservation is never free.
3. **Directed Quantum Proximity** — distance between states is the infimum resource join, not geometry.
4. **Complete Apophasis** — a defect's capabilities are dictated exclusively by what it excludes; permanence (η = ∅) iff S = 0.
5. **Resource Cliff** — composition beyond the local sheaf bound maps to 0_Res and the loop snaps instantly.
6. **Borromean Paradox Stability** — a contradiction is admissible iff localised to a tripartite node with det(M_Δ) > 0; explosion is a local cliff.
7. **Reflexive Selection** — matter reshapes its own transition landscape; open-ended evolution exists only between the noise regime and the monoculture regime.

## Layout

    README.md               this file
    NOTICE.md               bifurcated licensing + commercial dual-license terms
    LICENSE                 AGPL-3.0 (code strata)
    docs/LICENSE            CC BY 4.0 (specification strata)
    docs/00-method.md       via negativa / dialetheism / paraconsistency charter
    docs/01-presence.md     Cat_RAT-ACT: objects, monad, laws of presence
    docs/02-absence.md      Cat_∅: nodal defects, scissors morphisms
    docs/03-dynamics.md     RAT kinetic layer as monad instantiation
    docs/04-paradox.md      Borromean nodes, M_Δ, trajectory law
    docs/05-synthesis.md    dialetheias, identity boundary, fatal inputs
    docs/archive/           the four original source documents
    src/                    Haskell blueprint (Res, Category, Borromean)
    sim/det_collapse.py    paradox collapse tracker
    cases/                  applied cliff analyses

## Build & Run

Haskell guards (GHC):

    cd src
    runghc Borromean.hs

Collapse simulation (stdlib only):

    python3 sim/det_collapse.py

## Status

- Specification: complete (docs/00-05).
- Haskell blueprint: Res.hs, Category.hs, Borromean.hs.
- Simulation: det_collapse.py — detonation boundary Φ_AB ≈ 2.5 rad; degradation cliff at overlap ≈ 0.9; trajectory law (collapse is irreversible without paid recovery).
- Open: presence ↔ absence adjunction functor equations (docs/05-synthesis.md §7).

## Licensing

Bifurcated. Specifications and whitepapers (docs/) are CC BY 4.0. Code, engines, and simulators (src/, sim/, cases/) are AGPL-3.0 with a commercial dual-licensing option. See NOTICE.md.
