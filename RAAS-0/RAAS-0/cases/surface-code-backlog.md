# Case: The Syndrome Backlog Wall — Topological Quantum Computing

License: AGPL-3.0 — see LICENSE and NOTICE.md.

## Mapping

Physical qubits and stabilizers map to the tensor subspace H_γ; the classical decoding engine maps to the Kraus operators of the channel E_γ.

## The cliff

Scaling code distance d to suppress logical errors forces a non-linear explosion in the temporal component T_μ of the recovery morphism. When the clock cycles required to compute the decoding path exceed the physical syndrome cycle time, uncorrected errors propagate into the next monadic iteration T²(ρ). The temporal resource cliff: the logical qubit collapses into noise.

## Verdict

Survival requires the decoding component of the constructor to be hard-coded into parallelized O(1) hardware co-located with the quantum substrate — μ cannot be outsourced off-timeline, because there is no off-timeline (Law 2).

Falsifier: a surface-code architecture whose decoder latency remains O(1) in d while coherence holds.
