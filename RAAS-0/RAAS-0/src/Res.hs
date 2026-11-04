
--------------------------------------------------------------------------------
-- Res.hs
--
-- The resource semi-lattice Res for RAAS-Ø.
--
-- Every physical task (morphism) is priced by a non-linear resource
-- constraint vector R = <S, M, T> via the Resource Valuation Functor F_R.
-- This module is the identity-bearing substrate of the whole framework:
-- every cliff check, every monadic cost, and every composition guard
-- bottoms out here.
--
-- RAAS-Ø: Reflexive Apophatic Constructor Synthesis.
-- License: AGPL-3.0 -- see repository root NOTICE for the commercial
-- dual-licensing terms.
--------------------------------------------------------------------------------

module Res
  ( R(..)
  , zeroR
  , isZeroR
  , dominates
  , joinR
  , tensorR
  , sheafBound
  ) where

-- | Non-linear resource constraint vector.
data R = R
  { substrates :: !Int   -- ^ S: raw material channels / physical qubits
  , metaCons   :: !Int   -- ^ M: boundary-stabilising hardware / meta-constructors
  , timeSteps  :: !Int   -- ^ T: clock-gated sequential steps
  } deriving (Eq, Show)

-- | The zero morphism 0_Res: a completely blocked, non-executable channel.
-- This is the value every failed composition collapses to (Law 5, Resource
-- Cliff) and the smallest fatal input of the presence layer.
zeroR :: R
zeroR = R 0 0 0

isZeroR :: R -> Bool
isZeroR r = r == zeroR

-- | Dominance partial order of the bounded semi-lattice.
dominates :: R -> R -> Bool
R s m t `dominates` R s' m' t' = s >= s' && m >= m' && t >= t'

-- | Lattice join: sequential and parallel resource accumulation.
joinR :: R -> R -> R
joinR (R a b c) (R d e f) = R (max a d) (max b e) (max c f)

-- | Monoidal product with non-linear infrastructure overhead:
-- R1 ⊗ R2 ⪰ R1 + R2. Combining systems always costs at least the sum,
-- and pays one extra meta-layer for the shared boundary.
tensorR :: R -> R -> R
tensorR (R s1 m1 t1) (R s2 m2 t2) =
  R (s1 + s2) (m1 + m2 + 1) (max t1 t2)

-- | Localized sheaf bound R_X(U_causal): the resource ceiling within
-- which composition remains executable for object X.
sheafBound :: Int -> Int -> Int -> R
sheafBound = R
