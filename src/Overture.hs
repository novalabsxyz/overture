{-# LANGUAGE NoImplicitPrelude #-}
-- | This is a convenience module that reexports the Prelude in terms of
-- the generalized versions provided by the packages we use.
module Overture
  ( module X
  )
  where

  -- Haskell 98 stuff is easier to get at through the Prelude
  -- than through the GHC-specific modules
import           Prelude                  as X (Bounded (..), Double, Enum (..),
                                                Float, Floating (..),
                                                Fractional (..), Integer,
                                                Integral (..), Num (..),
                                                Real (..), RealFloat (..),
                                                RealFrac (..), asTypeOf, error,
                                                even, fromIntegral, gcd, lcm,
                                                odd, realToFrac, subtract,
                                                undefined, until, ($!), (^),
                                                (^^))

  -- The important components of the base package
import           Control.Applicative      as X hiding (liftA)
import           Control.Category         as X
import           Control.DeepSeq          as X (NFData)
import           Control.Exception.Lifted as X hiding (Handler)
import           Control.Monad            as X hiding (forM, forM_, mapM, mapM_,
                                                msum, sequence, sequence_)
import           Control.Monad.Fix        as X
import           Control.Monad.IO.Class   as X
import           Control.Monad.Trans      as X
import           Data.Bool                as X
import           Data.ByteString          as X (ByteString)
import           Data.Char                as X
import           Data.Data                as X hiding (Fixity (..), Infix (..),
                                                Prefix (..))
import           Data.Either              as X
import           Data.Eq                  as X
import           Data.Foldable            as X
import           Data.Function            as X hiding (id, (.))
import           Data.Functor             as X
import           Data.Int                 as X
import           Data.List                as X hiding (all, and, any, concat,
                                                concatMap, elem, find, foldl,
                                                foldl', foldl1, foldr, foldr1,
                                                mapAccumL, mapAccumR, maximum,
                                                maximumBy, minimum, minimumBy,
                                                notElem, or, product, sum, (\\))
import           Data.Maybe               as X
import           Data.Monoid              as X
import           Data.Ord                 as X
import           Data.Ratio               as X
import           Data.String              as X
import           Data.Text                as X (Text)
import           Data.Traversable         as X
import           Data.Tuple               as X
import           Data.Word                as X

import           GHC.Float                as X (roundTo)
import           GHC.Generics             as X hiding (to)

  -- System facilities
import           System.Environment       as X
import           System.Exit              as X
import           System.IO                as X hiding (utf8)
import           System.IO.Error          as X (userError)
import           System.Random            as X

  -- Read, Show, and printf
import           Text.Printf              as X
import           Text.Read                as X (Read (..), lex, read, readParen,
                                                reads)
import           Text.Show                as X
