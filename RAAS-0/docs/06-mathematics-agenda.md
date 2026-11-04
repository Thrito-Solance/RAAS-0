
# The Mathematics Agenda — docs/06

Ranked by via negativa: identity-bearing mathematics first — it closes gaps in the standing specification; decorative mathematics is excluded (§5).

## 1. Tier 1 — identity-bearing (closes open gaps)

### 1.1 The presence ↔ absence adjunction — top gap (docs/05 §7)

Three candidate formalisms, in order of expected yield:

1. **Co-Heyting boundaries.** In the co-Heyting algebra of closed subobjects, negation satisfies ¬_co¬_co A ≠ A and carries an intrinsic boundary operator ∂A = A ∧ ¬_co A. Mapping: nodal defect ∅_X := ¬_co Supp(X); Exclusion Index XI := depth of the boundary stratification; scissors morphisms := boundary-preserving deformations. Payoff: absence becomes an algebraic negation that is paraconsistent by construction (¬¬A ≠ A), so dialetheia D2 — presence and absence both causally productive — is contained by the algebra rather than stipulated by fiat.
2. **The Chu construction.** Presence/absence as the extensional/intensional pair of a Chu space; the Phase-3 collapse-reinjection functor becomes Chu dualisation; yields a star-autonomous category connecting directly to the graded linear logic programme (§3.1).
3. **Slice adjunction equations.** Cat_∅ is already the slice Cat_RAT-ACT / E. Write the collapse functor D and its right adjoint B with unit and counit as Res-enriched natural transformations — the first actual equations in the framework's top gap.

### 1.2 Graded monad laws for T_γ

Formalise T_γ as an Res-graded monad. The three monad laws become resource inequalities:

- associativity: the cost of flattening nested errors — F_R of μ ∘ Tμ versus Tμ ∘ μ versus μ;
- units: F_R of μ ∘ ηT and μ ∘ Tη versus F_R of id.

Conjecture (theorem-shaped): the laws hold only up to a positive correction term, and that correction term is exactly the degradation η — dialetheia D1 (γ invariant and degrading) becomes a theorem of graded monad theory rather than a stance.

### 1.3 Complexity of the assembly index

Exact AI computation as shortest derivation in a graph grammar: prove NP-hardness (reduction from shortest common supersequence); approximation guarantees for the random-search estimator; σ_A as the value function of shortest-path over the resource lattice (lattice Dijkstra), giving the Directed Quantum Proximity law an algorithmic core.

## 2. Tier 2 — layer rigour

### 2.1 Kinetic layer: chemical reaction network theory

The reflexive selectivity system is a catalytic mass-action network. Apply Feinberg-Horn-Jackson deficiency theory: compute the network's deficiency; deficiency zero implies a unique positive equilibrium per stoichiometric class, globally attracting. Candidate theorem: the Darwinian zone is precisely the deficiency-stable window between washout and monoculture. Separately: monotone systems theory for A_sys(t) as a Lyapunov-like functional (prove dA_sys/dt > 0 in the Darwinian zone), and the origin of life as a bifurcation in the (δ_i, σ_m) plane.

### 2.2 Paradox layer: link invariants and bifurcation

- **Milnor invariants.** The tripartite memory is the triple linking number μ(1,2,3): it vanishes if any component is removed — the Borromean property, exactly, and the formal reason intercepting two channels yields only identity operators. Massey products are the algebraic avatar.
- **Gram analysis.** M_Δ as a phased Gram matrix; the admissible region det(M_Δ) > 0 as a polytope in phase space; det = 0 as the cliff manifold.
- **Catastrophe theory.** The simulation's hysteresis — det recovers positive values below the cliff while the node is already dead — is a cusp catastrophe in (Φ_AB, d). Formalise the two-sheeted admissibility surface with the trajectory law as the branch-selection rule.

### 2.3 Paraconsistent logic grounding

- Name the logic: LP (Priest) for dialetheia ingestion in the channel; FDE for the base entailment; non-deterministic matrices for error ingestion by E_γ.
- Bilattice semantics for M_Δ: the truth order (det) and the knowledge order (overlap) as the two lattice orders of a four-valued evaluation.
- "A contradiction is inert unless bracketed" as an LP-modality: Borromean bracketing as a modal accessibility condition.

## 3. Tier 3 — proof-theoretic unification

### 3.1 Graded linear logic

Res is a resource semiring; partial composition, quantized μ-cost, and tensor overhead (R1 ⊗ R2 ⪰ R1 + R2) are exactly graded/affine linear logic. Give RAAS-Ø a proof system, not just a model: proofs live in graded modal linear logic whose grades are resource vectors; Law 5 (Resource Cliff) becomes the failure condition of cut elimination.

### 3.2 Coinduction for autopoiesis

"Stays alive" is a coinductive proof obligation: the repair loop is a guarded corecursive definition. The existence of γ is a fixed-point theorem — Banach contraction on the assembly metric σ_A with the meta-compensated degradation rate as the contraction constant. Theorem candidate: γ exists and is unique iff meta-compensated degradation is a σ_A-contraction with constant < 1. This converts the Law of Bounded Capability into a solvability condition.

### 3.3 Machine verification (Lean 4)

Everything decidable in the guards — the lattice laws of Res, the cliff theorem, det(M_Δ) > 0 admissibility — is Lean-formalisable, and the deployment vehicle already exists in the author's Sovereign_Governor stack. Target: a verified guard library with an empty defect set of its own.

## 4. Sequencing

1.1 first (closes the top gap), then 2.1 (proves the origin-of-life transition), then 1.2 (D1 as theorem). 3.1 is the unification payoff. 3.3 runs continuously alongside all tiers.

## 5. Excluded mathematics (via negativa ledger)

- AdS/CFT and the holographic adjunction: decorative — no coupling back into the laws; re-admitted only when a use case demands a bulk-boundary dictionary.
- Drake-equation re-engineering: derived corollary, not a mathematical programme.
- Complexity-stage self-ranking of the framework: excluded by construction (docs/05 §6).
- Any mathematics whose only role is to make the framework look larger: excluded on sight.

License: CC BY 4.0 — see docs/LICENSE.
