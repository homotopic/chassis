{-# LANGUAGE ExplicitNamespaces #-}
{-# LANGUAGE PolyKinds          #-}
module Chassis (
-- * Void
  Void
, absurd

-- * Bool
, Bool(..)
, not

-- * Numbers
, Int
, Num(..)

-- * String/Text/ByteString
, String
, ByteString
, Text
, Show(..)

-- * Classic Algebra
, Semigroup(..)
, Monoid(..)
, Eq(..)
, Ord(..)

-- * Function Composition
, (.)
, ($)

-- * IO
, IO

-- * Maybe
, Maybe(..)
, maybe

-- * Either
, Either(..)
, either

-- * NonEmpty
, NonEmpty(..)

-- * Map
, Map(..)

-- * Tuples & Currying
, fst
, snd
, const
, curry
, uncurry

-- * Foldable
, Foldable(..)

-- * Functor
, Functor(..)
, (<$>)
, void

-- * Applicative
, Applicative(..)
, when
, unless
, whenM
, whenJust

-- * Traversable
, Traversable(..)
, traverse_
, for_
, filterM

-- * Monad
, Monad(..)
, join
, forM_
, forM
, mapM_
, sequence_
, (=<<)
, (>=>)

-- * Contravariant
, Contravariant(..)
, (>$<)

-- * Distributive
, Distributive(..)

-- * Comonad
, ComonadApply(..)
, Comonad(..)
, (=>=)
, (<<=)

-- * Profunctor
, Profunctor(..)
, Strong(..)
, Choice(..)

-- * Category
, Category(..)
, Arrow(..)
, (>>>)
, ArrowChoice(..)
, ArrowLoop(..)

-- * EnvT
, Env(..)
, EnvT(..)
, env
, runEnv
, runEnvT

-- * Extensible Records
, Rec(..)
, RMap
, rtraverse
, rcast
, CoRec(..)
, type (∈)

-- * Compose
, (:.)
, Compose(..)
, onCompose

-- * Generic
, Generic

-- * Time
, UTCTime

-- * Path
, Path
, Rel
, Abs
, File
, Dir
, mkRelDir
, mkRelFile
, mkAbsDir
, mkAbsFile
, (</>)

, flip
, rights
, Type

-- * First Class Families
, Exp
, Eval
, FMap

-- * Exceptions
, Exception(..)
, SomeException(..)

-- * Undefined
, undefined

-- * Lists
, fromMaybe
, headMaybe
, tailMaybe
, initMaybe
) where

import Composite.CoRecord
import Control.Applicative
import Control.Arrow
import Control.Category hiding ((.))
import Control.Comonad.Env
import Control.Exception
import Control.Monad
import Control.Monad.Extra
import Data.ByteString
import Data.Distributive
import Data.Either
import Data.Foldable
import Data.Functor.Contravariant
import Data.Kind
import Data.List.NonEmpty
import Data.Map (Map)
import Data.Maybe
import Data.Profunctor
import Data.Text
import Data.Time (UTCTime)
import Data.Vinyl
import Data.Vinyl.Functor
import Data.Void
import Fcf (Eval, Exp)
import Fcf.Class.Functor (FMap)
import GHC.Generics
import RIO.List (headMaybe, tailMaybe, initMaybe)
import Path
import Prelude
