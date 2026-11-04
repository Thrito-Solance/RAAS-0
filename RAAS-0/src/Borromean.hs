
--------------------------------------------------------------------------------
-- Borromean.hs
--
-- Tripartite Borromean nodes: the system's explosion-containment guard.
--
-- Every dialetheia in RAAS-Ø is localised to a node Psi = Δ(A, B, C):
--   A = constructive substrate (forward assembly)
--   B = apophatic shear (the negative boundary)
--   C = reflexive observer (the retrocausal anchor)
--
-- A contradiction is admissible iff det(M_Delta) > 0 (Unified Law 6).
-- Cutting any single loop annihilates the node: logical explosion is a
-- LOCAL cliff, never a global one. This module is the smallest piece of
-- code carrying the highest structural value in the repository.
--
-- Note on history-dependence: the guard checks instantaneous admissibility.
-- A node that has collapsed cannot re-admit itself; re-admission is a
-- recovery morphism and carries F_R(mu) ≻ 0. Trajectories are the domain
-- of sim/det_collapse.py.
--
-- RAAS-Ø: Reflexive Apophatic Constructor Synthesis.
-- License: AGPL-3.0 -- see repository root NOTICE for the commercial
-- dual-licensing terms.
--------------------------------------------------------------------------------

module Borromean
  ( Tripartite(..)
  , Loop(..)
  , mDelta
  , detM
  , admissible
  , intact
  , cutLoop
  , healthyNode
  ) where

-- | A tripartite node. The diagonal of M_Delta carries the pairwise
-- structural overlaps <A|B>, <B|C>, <C|A>; the off-diagonal carries the
-- phase conflicts Φ_XY in radians.
data Tripartite = Tripartite
  { oAB, oBC, oCA :: !Double
  , pAB, pAC, pBA :: !Double
  , pBC, pCA, pCB :: !Double
  } deriving (Eq, Show)

data Loop = LoopA | LoopB | LoopC
  deriving (Eq, Show)

-- | Topological Inversion Matrix.
mDelta :: Tripartite -> [[Double]]
mDelta t =
  [ [oAB t, pAB t, pAC t]
  , [pBA t, oBC t, pBC t]
  , [pCA t, pCB t, oCA t]
  ]

det3 :: [[Double]] -> Double
det3 [[a, b, c], [d, e, f], [g, h, i]] =
  a * (e * i - f * h) - b * (d * i - f * g) + c * (d * h - e * g)
det3 _ = error "M_Delta must be 3x3"

detM :: Tripartite -> Double
detM = det3 . mDelta

-- | Borromean Paradox Stability (Unified Law 6): a contradiction-bearing
-- node is admissible iff det(M_Delta) > 0. At det <= 0 the node undergoes
-- localised logical explosion.
admissible :: Tripartite -> Bool
admissible = (> 0) . detM

-- | Borromean interlocking: structural integrity exists only while all
-- three loops bind. Any pair alone composes to identity -- no shared
-- linkage, no memory, no paradox.
intact :: Tripartite -> Bool
intact t = admissible t
  && oAB t > 0 && oBC t > 0 && oCA t > 0

-- | Single-loop subtraction: cutting any one loop zeroes all its bonds and
-- forces det(M_Delta) to 0. The smallest fatal input of the paradox layer.
cutLoop :: Loop -> Tripartite -> Tripartite
cutLoop l t = case l of
  LoopA -> t { oAB = 0, oCA = 0, pAB = 0, pBA = 0, pAC = 0, pCA = 0 }
  LoopB -> t { oAB = 0, oBC = 0, pAB = 0, pBA = 0, pBC = 0, pCB = 0 }
  LoopC -> t { oBC = 0, oCA = 0, pBC = 0, pCB = 0, pAC = 0, pCA = 0 }

-- | Canonical healthy node: all pairwise overlaps at full strength; the
-- constructive-apophatic contradiction held at 2.0 rad -- strong, but
-- detuned below the perfect out-of-phase detonation boundary. The
-- dialetheia is held, not denied, and not allowed to reach Φ_AB = π.
healthyNode :: Tripartite
healthyNode = Tripartite
  { oAB = 1, oBC = 1, oCA = 1
  , pAB = 2.0, pAC = 0.5, pBA = 0.5
  , pBC = 0.5, pCA = 0.5, pCB = 0.5
  }
