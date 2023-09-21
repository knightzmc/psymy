module A where

import Polysemy 

import Polysemy.State

import Prelude
f :: Sem '[State Int] ()
f = do 
    i <- get
    put (i + 1)
    pure ()