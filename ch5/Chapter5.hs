module Chapter5 where

-- System F anchestor
-- Hindley-Milner system for type inference

-- Exercise: Type matching
-- a) - c)
-- b) - a)
-- c) - b)
-- d) - a)
-- e) - e)

-- Sectioning - partial application of infix operators
-- (^2) or (2^)
-- partially apply the second parameter c = (`elem` [1..10])

-- Exercises: Type arguments
-- 1 a -> a -> a -> a / x :: Char / f x
-- a) Char -> Char -> Char
-- 2 a -> b -> c -> b / g 0 'c' "woot"
-- d) Char
-- 3 (Num a, Num b) => a -> b -> b / h 1.0 2
-- d) Num b => b
-- 4 (Num a, Num b) => a -> b -> b / h 1 (5.5 :: Double)
-- c) Double
-- 5 (Ord a, Eq b) => a -> b -> a / jackal "keyboard
-- a) [Char]
-- 6 (Ord a, Eq b) => a -> b -> a / jackal "keyboard"
-- e) Eq b => b -> [Char]
-- 7 (Ord a, Num b) => a -> b -> a / kessel 1 2
-- d) (Num a, Ord a) => a
-- 8 (Ord a, Num b) => a -> b -> a / kessel 1 (2 :: Integer) 
-- a) (Num a, Ord a) => a
-- 9 (Ord a, Num b) => a -> b -> a / kessel (1 :: Integer) 2
-- Integer

-- Polymophism - parametric or constraint
--             (unconstraint)

-- Excercise: Parametricity
-- 1. impossible
-- 2.
p :: a -> a -> a
p a a' = a

p' :: a -> a -> a
p' a a' = a'

-- 3.
p'' :: a -> b -> b
p'' a b = b

-- Polimorphic constant
-- t :: (Num a, Fractional b) => a -> b -> b
-- a is the polimophic constant, it has to resolve into a concrete type for evaluation

-- Exercise: Apply yourself
-- 1.
myConcat x = x ++ " yo"
-- [a] will turn into [Char] constraint by the right hand side of the operator

-- 2.
myMult x = (x / 3) * 5
-- the divison will constrain the a to Fractional

-- 3.
myTake x = take x "hey you"
-- [a] will be constraint into [Char]

-- 4.
myCom x = x > length [1 .. 10]
-- a will be constraint to Int

-- 5.
myAlph x = x < 'z'
-- a will be constraint to [Char]


-- Chapter Exercise
-- 1. [a]
-- c) a list of elements that are all of some type a

-- 2. [[a]] -> [a]
-- a) take a list of strings as an argument

-- 3. [a] -> Int -> a:
-- b) returns one element of type a from a list

-- 4. (a, b) -> a
-- c) takes a tuple argument and returns the first value

-- Type variable of specific type constructor?
-- 1. f :: Num a => a -> b -> Int -> Int
-- a - constraint polymorphic
-- b - full polymorphic
-- Int - concrete type

-- 2. f :: zed -> Zed -> Blah
-- zed - full polymorphic
-- Zed & Blah - concrete type

-- 3. f :: Enum b => a -> b -> C
-- a - full polymorphic
-- b - constraint polymorphic
-- c - full polymorphic

-- 4. f :: f -> g -> C
-- f & g full polymorphic
-- C - concrete type


-- Write a type signature
-- 1.
functionH :: [a] -> a
functionH (x : _) = x

-- 2.
functionC :: Ord a => a -> a -> Bool
functionC x y = x > y

-- 3.
functionS :: (a, b) -> b
functionS (x, y) = y


-- Given a type, write the function
-- 1
i :: a -> a
i a = a

-- 2
c :: a -> b -> a
c a b = a

-- 3
c'' :: b -> a -> b
c'' b a = b

-- 4
c' :: a -> b -> b
c' a b = b

-- 5.
r :: [a] -> [a]
r l = l

-- 6.
co :: (b -> c) -> (a -> b) -> a -> c
co f f' = f . f'

-- 7.
a :: (a -> c) -> a -> a
a f x = x

-- 8.
a' :: (a -> b) -> a -> b
a' f = f


-- Fix it
-- 1.
fstString :: String -> String
fstString x = x ++ " in the rain"

-- 2.
sndString :: String -> String
sndString x = x ++ " over the rainbow"

sing :: String
sing = if x > y then fstString x else sndString y
 where
  x = "Singing"
  y = "Somewhere"


-- Type-Kwon-Do
-- 1.
f :: Int -> String
f = undefined

g :: String -> Char
g = undefined

h :: Int -> Char
h = g . f

-- 2.
data A
data B
data C

q :: A -> B
q = undefined

w :: B -> C
w = undefined

e :: A -> C
e = w . q

-- 3
data X
data Y
data Z

xz :: X -> Z
xz = undefined

yz :: Y -> Z
yz = undefined

xform :: (X, Y) -> (Z, Z)
xform (x, y) = (xz x, yz y)

-- 4
munge :: (x -> y) -> (y -> (w, z)) -> x -> w
munge f f' = fst . f' . f
