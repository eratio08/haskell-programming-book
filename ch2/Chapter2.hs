sayHello :: String -> IO ()
sayHello x = putStrLn ("Hello, " ++ x ++ "!")

triple x = x * 3

-- Exercise: Comprehension check
-- 1.
half x = x / 2

square x = x * x

-- square (half 4)

-- 2.
piTimesSquared x = 3.14 * square x

-- 3.
piTimesSquared' x = pi * square x

-- Exercise: Parentheses and association
-- 1. Yes
-- 2. No
-- 3. Yes

-- Exercise: Heal the sick
-- 1.
area x = pi * (x * x)
-- 2.
double x = x * 2
-- 3.
x = 7
y = 10
f = x + y

-- div integral division, round down
-- mod like rem, but after modular division
-- quot integral division, round toward zero
-- rem remainder after division

-- Exercise: A head code
-- 1. let x = 5 in x -> 5
-- 2. let x = 5 in x * x -> 25
-- 3. let x = 5; y = 6 in x * y -> 30
-- 4. let x = 3; y = 1000 in x + 3 -> 6

-- Chapter exercises
-- Parenthesization
-- 1. 2 + 2 * 3 - 1 -> 2 + (2 * 3) -1
-- 2. (^) 10 $ 1 + 1 -> ((^) 10) $ (1 + 1)
-- 3. 2 ^ 2 * 4 ^ 5 + 1 -> ((2 ^ 2) * (4 ^ 5)) + 1

-- Equivalent expressions
-- 1. 1 + 1 = 2
-- 2. 10 ^ 2 = 10 + 9 * 10
-- 3. 400 - 37 != (-) 37 400
-- 4. 100 `div` 3 != 100 / 3
-- 5. 2 * 5 + 18 != 2 * (5 + 18)

-- More fun with functions
-- 1.
z' = 7
x' = y' ^ 2
waxOn = x' * 2
y' = z' + 8
-- 10 + waxOn -> 210
-- (+ 10) waxOn -> 210
-- (-) 15 waxOn -> -185
-- (-) waxOn 15 -> 185

-- 2.

-- 3.
-- triple waxOn -> 1350

-- 4.
waxOn' = x * 2
 where
  z = 7
  x = y ^ 2
  y = z + 8
-- triple waxOn' -> 1350
-- 5.

-- 6.
waxOff = triple
