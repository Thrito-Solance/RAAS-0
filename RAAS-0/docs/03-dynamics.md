# The Kinetic Layer — RAT as Monad Instantiation — docs/03

## 1. Scope

The presence category (docs/01) is static: it classifies and bounds, but does not move. The kinetic layer supplies the equations of motion — the only layer of RAAS-Ø that actually evolves a system in time.

## 2. State space

A system is governed by the state vector n_t = [n_1 … n_N] ∈ ℤ+^N: discrete macroscopic copy numbers of all valid species within a finite volume V. Continuous concentrations: [m_i]_t = n_i / V.

## 3. The invariant structural space

Every species m_i carries an unalterable Structural Assembly Index a_i = min |T(m_i)| — the shortest recursive path on an invariant directed acyclic graph rooted in a finite basis B. Assembly history is permanent memory; dynamics cannot edit it.

## 4. Reflexive kinematics

    d[m_i]/dt = Σ α_xy→i([m]_t)·[x]·[y] − Σ α_iy→j([m]_t)·[i]·[y] − δ_i·[m_i]

The Reflexive Selectivity Matrix warps transition paths as a function of local reflexive-catalyst concentrations:

    α_xy→i([m]_t) = (κ_xy→i + Σ_c γ_xy→i(m_c)·[m_c]) / (Σ_k κ_xy→k + Σ_c γ_xy→k(m_c)·[m_c])

Matter is an active participant that reshapes its own probability landscape: the catalysts are products of the very network whose formation they accelerate.

## 5. First Law constraints

Mass conservation across the stoichiometry matrix (M·[m]_t = C) and Arrhenius energy activation bounds (W_t ≤ ν·exp(−ΔG‡/RT)).

## 6. The macroscopic selection observer

    A_sys(t) = Σ_i e^(a_i) · (n_i − 1) · Θ(n_i − 1)

## 7. The three regimes

- **Chemistry regime** (δ_i > δ_crit): environmental noise is high; memory immediately decays; total assembly → 0. This is 0_Res in kinetic clothing: the washout channel.
- **Darwinian zone** (0 < σ_m < limit): mass-conservation forces reflexive loops to compete; open-ended evolution.
- **Monoculture regime** (σ_m → ∞): a single pathway locks up all mass; evolution freezes.

## 8. Monad instantiation

| Category concept (docs/01) | Kinetic realisation |
|---|---|
| Endofunctor T | the reflexive rate network itself |
| Unit η | influx of perturbations into the catalytic domain |
| Multiplication μ | the repair/selection term, priced by Ω (entropy overhead per state change) |
| Sheaf bound R_X(U_causal) | mass conservation + Arrhenius bound |
| Zero morphism 0_Res | total washout (chemistry regime) |
| Resource Cliff | monoculture lockup / thermal runaway |

The laws of presence (docs/01 §5) are enforced here as thermodynamic inequalities, not as bookkeeping.

## 9. Origin-of-life verdict

Life is not a molecule, and not compression. It is a phase transition: the emergence of a sub-graph fixed point γ whose internal assembly pathways close into a monad — the exact moment at which γ can repair its own degradation by drawing operational assets from the local lattice without triggering a cliff.

License: CC BY 4.0 — see docs/LICENSE.
