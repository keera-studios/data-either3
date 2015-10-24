This is a very simple datatype. Either a b c holds either an a, or a b, or a c.

# Usage

Create Either3 values:
``` haskell
GHCi, version 7.10.2: http://www.haskell.org/ghc/  :? for help
Prelude> import Data.Either3
Prelude Data.Either3> let x :: Either3 Int Float Double; x = First 5
Prelude Data.Either3> let y :: Either3 Int Float Double; y = Second 5.12
```
Query their type:
```haskell
Prelude Data.Either3> :type x
x :: Either3 Int Float Double
Prelude Data.Either3> :type y
y :: Either3 Int Float Double
Prelude Data.Either3> isFirst x
True
Prelude Data.Either3> isFirst y
False
```
Extract information:
```haskell
Prelude Data.Either3> 5 + either3 fromIntegral realToFrac id x
10.0
Prelude Data.Either3> :type (5 + either3 fromIntegral realToFrac id x)
(5 + either3 fromIntegral realToFrac id x) :: Double
```

# Stability

* Status: stable
* Build status: [![Build Status](https://travis-ci.org/keera-studios/data-either3.svg?branch=master)](https://travis-ci.org/keera-studios/data-either3)
* Actively tested on GHC 7.6, 7.8 and 7.10.
