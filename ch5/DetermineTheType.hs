{-# LANGUAGE NoMonomorphismRestriction #-}
module DetermineTheType where


-- simple example
example = 1

-- 1.
-- a) Num a => a
-- b) Num a => (a, [a])
-- c) (Integr, [Char])
-- d) Bool
-- e) Int
-- f) Bool

-- 2.
-- w :: Num

-- 3.
-- z :: Num a => a -> a

-- 4.
-- :: Fractional

-- 5.
-- [Char]

-- Does it compile?
-- 1. No
-- 2. Yes
-- 3. No
-- 4. No
