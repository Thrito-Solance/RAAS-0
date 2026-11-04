
--------------------------------------------------------------------------------
-- Category.hs
--
-- The resource-enriched partial category Cat_RAT-ACT: physical tasks are
-- morphisms, and composition is defined only when the joined resource cost
-- stays under the local sheaf bound. Otherwise the composition maps to the
-- zero morphism 0_Res (Law 5, the Resource Cliff).
--
-- RAAS-Ø: Reflexive Apophatic Constructor Synthesis.
-- License: AGPL-3.0 -- see repository root NOTICE for the commercial
-- dual-licensing terms.
--------------------------------------------------------------------------------

module Category
  ( Task(..)
  , Comp(..)
  , compose
  , recover
  ) where

import Res

-- | A physical task: a morphism priced by the resource functor F_R.
data Task = Task
  { taskName :: String
  , taskCost :: R
  } deriving (Eq, Show)

-- | Partial composition outcome: an executable morphism, or the zero
-- morphism (a completely blocked channel).
data Comp = Executable Task | Blocked
  deriving (Eq, Show)

-- | Law of the Resource Cliff (Unified Law 5):
--
--   F_R(g ∘ f) = F_R(g) ∨ F_R(f)   if the join ⪯ R_X(U_causal)
--   F_R(g ∘ f) = 0_Res             otherwise
--
-- The bound is the localized sheaf limit; the check is the single most
-- probable fatal input of the entire framework (see docs/05-synthesis.md).
compose :: R -> Task -> Task -> Comp
compose bound f g =
  let joined = joinR (taskCost f) (taskCost g)
  in if bound `dominates` joined
       then Executable (Task (taskName f ++ " > " ++ taskName g) joined)
       else Blocked

-- | Law of Quantized Monadic Cost (Unified Law 2): the recovery morphism
-- mu (error calculation, feedback processing, structural self-repair) is
-- an internal morphism of the universe and is never free. A zero-cost
-- recovery is forbidden and rejected at the type level.
recover :: Task -> Either String Task
recover mu
  | isZeroR (taskCost mu) =
      Left "F_R(mu) = 0: free self-repair violates the Second Law of RAT-ACT"
  | otherwise =
      Right mu
