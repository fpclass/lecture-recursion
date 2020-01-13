--------------------------------------------------------------------------------
-- Functional Programming (CS141)                                             --
-- Lecture 5: Recursive functions                                                    --
--------------------------------------------------------------------------------

module LocalFunctions where

--------------------------------------------------------------------------------

fac :: (Eq a, Num a) => a -> a
fac x = go x 1
    where go 0 m = m
          go n m = go (n-1) (n*m)

intercalate :: String -> [String] -> String
intercalate sep xs = go xs
    where go []     = ""
          go [x]    = x
          go (x:xs) = x ++ sep ++ go xs

--------------------------------------------------------------------------------
