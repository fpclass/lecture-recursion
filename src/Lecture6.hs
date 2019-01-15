--------------------------------------------------------------------------------
-- Functional Programming (CS141)                                             --
-- Lecture 6: Recursive functions                                                    --
--------------------------------------------------------------------------------

module Lecture6 where

import Prelude hiding ( and, replicate, product, take, length,
                        (++), reverse, concat, splitAt, zip)

--------------------------------------------------------------------------------
-- Factorial

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n-1)

--------------------------------------------------------------------------------
-- Fibonacci

fib :: Int -> Int
fib 0 = 1
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

--------------------------------------------------------------------------------
-- Product

product :: Num a => [a] -> a
product []     = 1
product (n:ns) = n * product ns

--------------------------------------------------------------------------------
-- Demo

and :: [Bool] -> Bool
and = undefined

length :: [a] -> Int
length = undefined

take :: Int -> [a] -> [a]
take = undefined

replicate :: Int -> a -> [a]
replicate = undefined

(++) :: [a] -> [a] -> [a]
(++) = undefined

reverse :: [a] -> [a]
reverse = undefined

concat :: [[a]] -> [a]
concat = undefined

splitAt :: Int -> [a] -> ([a],[a])
splitAt = undefined

zip :: [a] -> [b] -> [(a,b)]
zip = undefined

--------------------------------------------------------------------------------
