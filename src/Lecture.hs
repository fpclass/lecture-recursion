--------------------------------------------------------------------------------
-- Functional Programming (CS141)                                             --
-- Lecture: Recursive functions                                                    --
--------------------------------------------------------------------------------

module Lecture where

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
-- splitAt

splitAt :: Int -> [a] -> ([a],[a])
splitAt 0 xs     = ([], xs)
splitAt _ []     = ([], [])
splitAt n (x:xs) = (x:ys, zs)
    where (ys,zs) = splitAt (n-1) xs

--------------------------------------------------------------------------------
-- Demo

and :: [Bool] -> Bool
and [] = True
and (x:xs) = x && and xs

length :: [a] -> Int
length [] = 0
length (_:xs) = 1 + length xs

take :: Int -> [a] -> [a]
take 0 _ = []
take n [] = []
take n (x:xs) = x : take (n-1) xs

replicate :: Int -> a -> [a]
replicate 0 _ = []
replicate n x = x : replicate (n-1) x

(++) :: [a] -> [a] -> [a]
[] ++ ys = ys
(x:xs) ++ ys = x : (xs ++ ys)

reverse :: [a] -> [a]
reverse [] = []
reverse (x:xs) = reverse xs ++ [x]

concat :: [[a]] -> [a]
concat [] = []
concat (xs:xss) = xs ++ concat xss

zip :: [a] -> [b] -> [(a,b)]
zip [] _ = []
zip _ [] = []
zip (x:xs) (y:ys) = (x,y) : zip xs ys 

--------------------------------------------------------------------------------
