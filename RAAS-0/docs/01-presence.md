# The Presence Category — Cat_RAT-ACT — docs/01

## 1. Objects

Every object X_N is a quantum-classical hybrid system state:

    X_N = ⟨ M_N, ρ_E ⟩

- **M_N** — a directed multi-graph: edges track localized mass/ionic/qubit flux densities J_i; vertices track conserved local capacities c_i. Every object carries its history as a Directed Assembly Index AI(M_N) ∈ ℕ: the minimal number of recursive selection steps required to build its correlation structure from unentangled vertices.
- **ρ_E** — an open-system, non-equilibrium thermal density operator tracking local entropy generation, tunneling channels, and thermodynamic fields.

## 2. Partial morphisms

Morphisms f : X → Y are physical tasks. Composition is strictly partial and enriched over the resource semi-lattice Res:

    F_R(g ∘ f) = F_R(g) ∨ F_R(f)    if F_R(g) ∨ F_R(f) ⪯ R_X(U_causal)
    F_R(g ∘ f) = 0_Res               otherwise

If a composition demands assets past the local sheaf limit, it evaluates to the zero morphism 0_Res: a completely blocked, non-executable channel.

## 3. The resource functor F_R

F_R : Cat_RAT-ACT → Res maps every morphism to a resource vector:

    R = ⟨ S, M, T ⟩

- **S** — substrates: raw material channels / physical qubits.
- **M** — meta-constructors: hardware and boundary-stabilising layers.
- **T** — time steps: clock-gated sequential cycles.

Res is a strict symmetric monoidal category: a bounded semi-lattice ordered by dominance ⪰, whose monoidal product carries non-linear infrastructure overhead: R1 ⊗ R2 ⪰ R1 + R2.

## 4. The operational density monad T_γ

Agency, autopoiesis, and autonomous fault-tolerance are governed by T_γ = (T, η, μ), isolating a distributed sub-graph fixed point γ in the decomposition H_total = H_γ ⊗ H_substrate.

1. **Endofunctor T**: T(X_N) = E_γ(X_N) = Σ_k M_k X_N M_k† — the completely positive, trace-non-increasing channel executed by the active sub-graph constructor. Under paraconsistent logic the channel can ingest true contradictions (A ∧ ¬A), accepting localized errors as features of its operational layout.
2. **Unit η**: the inclusion entangling a perturbed state into the constructor's domain.
3. **Multiplication μ**: the physical recovery morphism flattening nested errors, bounded by the Onsager Phase Overlap Operator Ω: F_R(μ) ⪰ ⟨ 0, Ω(ΔS_internal), Δt_diffusion ⟩ ≻ 0 — never free.

## 5. Laws of presence

- **I. Bounded Capability**: no constructor in a finite universe keeps an empty degradation set (η_ACT = ∅) across infinite cycles; every monadic execution peels capability unless actively compensated by a nested, sub-linear meta-hierarchy.
- **II. Quantized Monadic Cost**: μ is an internal morphism of the universe: F_R(μ) ≻ 0. Self-preservation is never free and never outside the system's own timeline.
- **III. Directed Quantum Proximity**: state distance is the infimum resource lattice required by a reflexive operator to bridge them: σ_A(ρ') = inf { R ∈ L_R | R satisfies E_γ(ρ') ∈ C }.
- **V. Resource Cliff**: when the recovery join violates the local sheaf ordering (F_R(μ) ⪯̸ R_X(U_causal)), composition maps to 0_Res, the feedback loop snaps, and the system collapses or dissolves.

Law IV belongs to the absence category (docs/02-absence.md). The full unified set of seven laws is in docs/05-synthesis.md §4.

## 6. Standing dialetheia

The constructor γ is simultaneously **invariant and degrading** (D1). The Gödelian self-containment of a set containing its own operator was never "solved" — the categorical consolidation relocated it inside the monad, where it is the engine, not the defect.

License: CC BY 4.0 — see docs/LICENSE.
