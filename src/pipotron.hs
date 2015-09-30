-- Licence : Apache 2.0
module Main where

import Control.Monad (replicateM)
import Data.Array.MArray
import System.Random
import System.Random (randomRIO)

import Configuration

-- http://lyah.haskell.fr/demarrons

main :: IO ()
main = pipotronAll

-------------------------------------------------------------------------------
cartProd :: [String] -> [String] -> [(String, String)]
cartProd xs ys = [(x,y) | x <- xs, y <- ys]

concatCartProd :: [String] -> String -> [String] -> [(String)]
concatCartProd xs separator ys = [(x ++ separator ++ y) | x <- xs, y <- ys]

printAll :: [String] -> IO ()
printAll xs = if null xs        -- If the list is empty
    then return ()              -- then we're done, so we quit.
    else do print (head xs)     -- Otherwise, print the first element
            printAll (tail xs)  -- then print all the other elements.

pick :: [a] -> IO a
pick xs = randomRIO (0, length xs - 1) >>= return . (xs !!)

-------------------------------------------------------------------------------

pipotronSentences :: [String]
pipotronSentences = (
                     s1
                  ++ (concatCartProd s2_a " " s2_b)
                  ++ (concatCartProd s3_a " " s3_b)
                  ++ (concatCartProd s4_a " " s4_b)
                  )

pipotronAll :: IO ()
pipotronAll = printAll pipotronSentences

pipotron :: IO String
pipotron = pick pipotronSentences

cpTrolleur :: IO String
cpTrolleur = pipotron

