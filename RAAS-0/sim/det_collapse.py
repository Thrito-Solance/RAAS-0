
#!/usr/bin/env python3
"""
det_collapse.py -- RAAS-0 paradox-layer collapse tracker.

Numerically tracks the determinant of the Topological Inversion Matrix
M_Delta of a tripartite Borromean node Psi = D(A, B, C) under:

  (1) contradiction sweep      -- phase conflict Phi_AB swept 0 -> pi
  (2) overlap decay             -- uniform degradation of structural overlaps
  (3) single-loop subtraction   -- cutting any one loop zeroes its bonds

Stability law (Unified Law 6): a contradiction-bearing node is admissible
iff det(M_Delta) > 0. At det <= 0 the node undergoes localised logical
explosion.

The decay experiment exposes a non-monotone determinant surface with a
cliff followed by a spurious re-stabilisation region. Re-admission after
collapse requires a paid recovery morphism (F_R(mu) > 0): admissibility
is a property of the trajectory, not the instant. This history-dependence
is a core RAAS-0 prediction.

Stdlib only. Writes det_collapse.csv.

RAAS-0: Reflexive Apophatic Constructor Synthesis.
License: AGPL-3.0 -- see repository root NOTICE for the commercial
dual-licensing terms.
"""

import csv
import math

PI = math.pi

# Canonical healthy node (mirrors Borromean.hs / docs/04-paradox.md):
# all pairwise overlaps at full strength; the constructive-apophatic
# contradiction held at 2.0 rad; remaining phase conflicts at 0.5 rad.
HEALTHY = dict(o_ab=1.0, o_bc=1.0, o_ca=1.0,
               p_ab=2.0, p_ac=0.5, p_ba=0.5,
               p_bc=0.5, p_ca=0.5, p_cb=0.5)

CUT_BONDS = {
    "A": ("o_ab", "o_ca", "p_ab", "p_ba", "p_ac", "p_ca"),
    "B": ("o_ab", "o_bc", "p_ab", "p_ba", "p_bc", "p_cb"),
    "C": ("o_bc", "o_ca", "p_bc", "p_cb", "p_ac", "p_ca"),
}


def m_delta(o_ab, o_bc, o_ca, p_ab, p_ac, p_ba, p_bc, p_ca, p_cb):
    """Topological Inversion Matrix: diagonal = structural overlaps,
    off-diagonal = phase conflicts (radians)."""
    return [[o_ab, p_ab, p_ac],
            [p_ba, o_bc, p_bc],
            [p_ca, p_cb, o_ca]]


def det3(m):
    a, b, c = m[0]
    d, e, f = m[1]
    g, h, i = m[2]
    return a * (e * i - f * h) - b * (d * i - f * g) + c * (d * h - e * g)


def det_of(node):
    return det3(m_delta(**node))


def cut(node, loop):
    """Single-loop subtraction: zero all bonds of one loop."""
    n = dict(node)
    for key in CUT_BONDS[loop]:
        n[key] = 0.0
    return n


def overlaps_live(node):
    return node["o_ab"] > 0 and node["o_bc"] > 0 and node["o_ca"] > 0


def classify(det, live, collapsed):
    if collapsed:
        return "COLLAPSED-IRREVERSIBLE"
    if det < 0:
        return "EXPLODED"
    if det == 0:
        return "COLLAPSED"
    if not live:
        return "DISSOLVED"
    return "STABLE"


def sweep_contradiction(rows):
    """Experiment 1: how large a contradiction can the node hold?"""
    print("Experiment 1: contradiction sweep (Phi_AB from 0 to pi)")
    boundary = None
    steps = 64
    for k in range(steps + 1):
        p_ab = PI * k / steps
        node = dict(HEALTHY)
        node["p_ab"] = p_ab
        det = det_of(node)
        state = classify(det, True, False)
        rows.append(("contradiction-sweep", round(p_ab, 6), det, state))
        if det <= 0 and boundary is None:
            boundary = p_ab
    print("  detonation boundary at Phi_AB =", round(boundary, 4), "rad")
    print("  a perfect out-of-phase contradiction (Phi_AB = pi) lies past")
    print("  the boundary: the dialetheia is held, but only detuned --")
    print("  the node cannot survive its own contradiction at full phase.")


def sweep_decay(rows):
    """Experiment 2: uniform overlap degradation under noise accumulation."""
    print("Experiment 2: overlap decay under uniform degradation")
    cliff = None
    collapsed = False
    steps = 100
    for k in range(steps + 1):
        d = 1.0 - k / steps
        node = dict(HEALTHY)
        node["o_ab"] = d
        node["o_bc"] = d
        node["o_ca"] = d
        det = det_of(node)
        if not collapsed and det <= 0:
            collapsed = True
            cliff = d
        state = classify(det, overlaps_live(node), collapsed)
        rows.append(("overlap-decay", round(d, 6), det, state))
    print("  cliff at overlap strength d =", round(cliff, 4))
    print("  the node tolerates only", round((1 - cliff) * 100, 1),
          "percent degradation before collapse -- no graceful failure")
    print("  below the cliff the determinant surface recovers positive")
    print("  values, but the node has already crossed: re-admission is a")
    print("  recovery morphism and costs F_R(mu) > 0 (trajectory law)")


def cut_experiment(rows):
    """Experiment 3: single-loop subtraction (Borromean annihilation)."""
    print("Experiment 3: single-loop subtraction")
    for loop in ("A", "B", "C"):
        det = det_of(cut(HEALTHY, loop))
        state = classify(det, False, det <= 0)
        rows.append(("loop-cut-" + loop, 0.0, det, state))
        print("  cut loop", loop, "-> det(M_Delta) =", det, "->", state)
    print("  any single cut annihilates the node instantly: the Borromean")
    print("  topology is the explosion-containment mechanism")


def main():
    rows = []
    det0 = det_of(HEALTHY)
    print("RAAS-0 det(M_Delta) collapse tracker")
    print("healthy node: det =", det0, "->", classify(det0, True, False))
    print()
    sweep_contradiction(rows)
    print()
    sweep_decay(rows)
    print()
    cut_experiment(rows)
    print()
    print("Interpretation:")
    print("- Law 6 admits contradictions only inside a bounded phase window.")
    print("- Decay shows a sharp cliff plus a history-dependent lock: RAAS-0")
    print("  admissibility is a property of the trajectory, not the instant.")
    print("- The Borromean cut is instant total collapse of the paradox node,")
    print("  but strictly local: explosion containment works by design.")
    with open("det_collapse.csv", "w", newline="") as f:
        w = csv.writer(f)
        w.writerow(["experiment", "parameter", "det_M_Delta", "state"])
        w.writerows(rows)
    print()
    print("wrote det_collapse.csv with", len(rows), "rows")


if __name__ == "__main__":
    main()
