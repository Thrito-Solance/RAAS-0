# The Paradox Layer — Borromean Nodes — docs/04

## 1. Primitive pool

At iteration τ the universal state is M_τ = ⟨ Γ_τ, G_τ, Ω_ω ⟩ where:

- Γ_τ+ — positive primitives: bounded physical or logical constants.
- Γ_τ− — negative primitives: structural operators of constraint, negation, and boundary definition ("not-finite", "not-spatial").
- G_τ — the DAG ledger of realised pathways.
- Ω_ω — the ultimate attractor state (see dialetheia D4 before objecting).

State expansion is three-valued:

    X_i ⊕ X_j = X_i · X_j       constructive join (accumulation)
    X_i ⊕ X_j = X_i ⊗neg X_j    apophatic shear (isolating X_i by negating X_j)
    ⊕(A, B, C) = Δ(A, B, C)      tripartite entanglement (paradox stabilisation)

## 2. The tripartite node

Every contradiction-bearing node is a three-component vector Ψ = Δ(A, B, C):

- **A — constructive substrate**: the forward-moving positive assertion.
- **B — apophatic shear**: the negative boundary (via negativa).
- **C — reflexive observer**: the self-referential measurement loop and teleological anchor.

## 3. The Topological Inversion Matrix

    M_Δ = [ ⟨A|B⟩  Φ_AB  Φ_AC ]
          [ Φ_BA   ⟨B|C⟩ Φ_BC ]
          [ Φ_CA   Φ_CB  ⟨C|A⟩ ]

Diagonal: pairwise structural overlaps. Off-diagonal: phase conflicts (radians).

Pairwise interaction rules:

1. **A ↔ B**: strictly anti-correlated — every physical step forward creates an inverse boundary requirement; Φ_AB → π is the perfect out-of-phase contradiction.
2. **B ↔ C**: the negative boundary maps the silhouette of the observer; awareness depth is proportional to boundary complexity: ⟨B|C⟩ = R_depth.
3. **C ↔ A**: the observer exerts a teleological retrocausal pull; Φ_CA ∝ f(T − t), the temporal lag separating cause and effect.

## 4. Stability law (Unified Law 6)

A paradox is admissible iff:

    det(M_Δ) > 0

At det ≤ 0 the node undergoes localised logical explosion. At det > 0 the paradox is a permanent, self-validating building block of the system.

## 5. Derived results (sim/det_collapse.py)

Two results the collapse simulation adds to the specification:

1. **Detonation boundary.** For the canonical healthy node, admissibility fails at Φ_AB ≈ 2.5 rad — strictly below perfect anti-phase π. A dialetheia is held, but only detuned: the node cannot survive its own contradiction at full phase. This is the quantitative content of "held, not resolved".
2. **The trajectory law.** Under uniform overlap degradation, det(M_Δ) crosses zero at overlap strength d ≈ 0.9 (roughly ten percent tolerable degradation), then — non-monotonically — recovers positive values below the cliff. Re-admission after collapse is a recovery morphism and costs F_R(μ) ≻ 0: admissibility is a property of the trajectory, not the instant. History-dependence is enforced, exactly as the assembly index demands.

## 6. The three-phase cycle

1. **Stochastic superposition** — unconstrained combinatorial expansion; overlapping historical pathways as a density matrix ρ_τ.
2. **Teleological edge-shearing** — the attractor projects a retrocausal gradient through the network; edges that do not decrease the metric distance to Ω_ω are sheared away; uncontained contradictions decohere into background noise.
3. **Reflexive collapse** — a sub-graph crossing the awareness threshold collapses to a singular history, is compressed, inverted, and re-injected into the primitive pool as a new negative primitive:

    Γ_(τ+1)− = Γ_τ− ∪ { compress(G_local) }

The past becomes a chisel. This phase is the functor from the presence category to the absence category — the bridge that docs/05-synthesis.md §7 lists as the top open mathematical gap to formalise.

## 7. Standing dialetheia housed here

D4 — causation runs forward (assembly) and backward (teleological shear). Physically unsupported, structurally indispensable: the retrocausal term is a formal necessity of Phase 2's filtering, not an observed mechanism. Held, not repaired.

## 8. Reflexive Assembly Index

    AI_R(X) = ∮_Δ Tr(M_Δ) dτ

Complexity is the topological volume enclosed by the tripartite loop across its trajectory — not a count of forward steps.

License: CC BY 4.0 — see docs/LICENSE.
