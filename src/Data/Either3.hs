-- | A version of Data.Either that holds one of three possible values
module Data.Either3 (
                    -- * Construction
                      Either3 (..)
                    -- * Query
                    , isFirst
                    , isSecond
                    , isThird
                    )
  where

data Either3 a b c = First a
                   | Second b
                   | Third c

-- | True of the argument is (First x) for some x, False otherwise
isFirst :: Either3 a b c -> Bool
isFirst (First _) = True
isFirst _         = False

-- | True of the argument is (Second x) for some x, False otherwise
isSecond :: Either3 a b c -> Bool
isSecond (Second _) = True
isSecond _          = False

-- | True of the argument is (Third x) for some x, False otherwise
isThird :: Either3 a b c -> Bool
isThird (Third _) = True
isThird _         = False
