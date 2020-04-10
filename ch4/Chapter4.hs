module Chapter4 where

import           Data.Tuple
import           Data.List

-- data Bool = False | True

-- Exercises: Mood swing

data Mood = Blah | Woot deriving Show

-- 1. Mood
-- 2. Blah and Woot
-- 3. signature has to be changeMood :: Mood -> Mood
-- 4.
changeMood :: Mood -> Mood
changeMood Blah = Woot
changeMood _    = Blah

-- Number types

-- Integral numbers
-- Int - fixed length
-- Integer - arbitrarily
-- Word - fixed without negative

-- Fractional
-- Float - single precision
-- Double - double precision
-- Rational - fractional represented by two integers and arbitrarily precise
-- Fixed - fixed precision like Fixed E2 for two digest
-- Scientiic - almost arbitrary precision

-- Exercise: Find the mistake
-- 1. correct
-- 2. incorrect -> not (x == 6)
-- 3. correct
-- 4. incorrect -> ["Merry"] > ["Happy"]
-- 5. incorrect -> ['1', '2', '3'] ++ "look at me!"



myTup = (1 :: Integer, "blah")
myTup' = swap myTup

fst' :: (a, b) -> a
fst' (a, b) = a

snd' :: (a, b) -> b
snd' (a, b) = b

tupFunc :: (Int, [a]) -> (Int, [a]) -> (Int, [a])
tupFunc (a, b) (c, d) = ((a + c), (b ++ d))

-- 

p = "Papucho"
awesome = [p, "curry", ":)"]
s = "The Simons"
also = ["Quake", s]
allAwesome = [awesome, also]

-- Chapter exercise
-- 1.
-- length :: [a] -> Int
-- 2.
-- a) length [1,2,3,4,5] -> 5
-- b) [(1,2), (2,3), (3,4)] -> 3
-- c) length allAwseome -> 2
-- d) length (concat allAwesome) -> 5

-- 3.
-- 6 / length [1, 2, 3]

-- 4.
-- div 6 $ length [1,2,3]

-- 5.
-- 2 + 3 == 5 -> Bool

-- 6.
-- a) x = 5 -> 5 :: Int
-- b) x + 3 == 5 -> False :: Bool

-- 7.
-- a) True
-- b) will not work, mixed types
-- c) 5
-- d) False
-- c) will not work, lefthand part of && expression does not result in bool

-- 8.
isPalindron :: (Eq a) => [a] -> Bool
isPalindron x = x == reverse x

-- 9.
myAbs :: Integer -> Integer
myAbs x = if x < 0 then x * (-1) else x

-- 10.
f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f (a, b) (c, d) = ((b, d), (a, c))


-- Correct syntax
-- 1.
x = (+)
f' xs = w `x` 1 where w = length xs

-- 2.
x' x = x

-- 3.
f'' (a, b) = a

-- Match the function names to their types
-- 1. show
-- c) Show a => a -> String

-- 2. (==)
-- b) Eq a => a -> a -> Bool

-- 3. fst
-- a) (a, b) -> a

-- 4. (+)
-- d) Num a => a -> a -> a

-- data - type declaration
-- type - type alias

