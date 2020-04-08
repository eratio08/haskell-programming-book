module Chapter3 where

printHello :: IO ()
printHello = print "hello world!"

putStrHallo :: IO ()
putStrHallo = putStr "hello world!"

-- Exercise: Scope
-- 1.
-- x = 5
-- y = 7
-- z = x * y
-- yes, y is in scope of z

-- 2.
-- f = 3
-- g = 6 * f + h
-- no, h is not in scope

-- 3.
-- area d = pi * (r * r)
-- r = d / 2
-- no, d is not in scope

-- 4.
-- area d = pi * (r * r)
--  where r = d / 2
-- yes, d is in scope now

-- Exercise: Syntax errors
-- (++) [1,2,3] [4,5,6]
-- "<3" ++ " Haskell"
-- concat ["<3", " Haskell"]


-- More list functions
-- 'c' : "hris" -> "chris"
-- head "Papuchon" -> P
-- tail "Papuchon" -> apuchon
-- take 1 "Papucha" -> P
-- take 0 "Papucha" -> ""
-- take 6 "Papucha" -> "Papuch"
-- drop 4 "Papuchon" -> "chon"
-- "Papu" ++ "chon"
-- "Papuchon" !! 0 -> P
-- "Papuchon" !! 4 -> 'c'

-- Chapter exercises
-- Readon syntax
-- 1.
-- a) concat [[1, 2, 3], [4, 5, 6]] - correct
-- b) ++ [1, 2, 3] [4, 5, 6] - incorrect
-- c) (++) "hello" " world" - correct
-- d) ["hello" ++ " world] - incorrect
-- e) 4 !! "hello" - incorrect
-- f) (!!) "hello" 4 - correct
-- g) take "4 lovely" - incorrect
-- h) take 3 "awesome" - correct

-- 2.
-- a) concat [[1 * 6], [2 * 6], [3 * 6]] -> d) [6,12,18]
-- b) "rain" ++ drop 2 "elbow" -> c) "rainbow"
-- c) 10 * head [1, 2, 3] -> e) 10
-- d) (take 3 "Julie") ++ (tail "yes") -> a) "Jules"

-- Building functions
-- a) concat ["Curry is awesome", "!"]
-- b) "Curry is awesome!" !! 4
-- c) drop 9 "Curry is awesome!"

join :: String -> String -> String
join s1 s2 = s1 ++ s2

takeAtIndex4 :: String -> Char
takeAtIndex4 str = str !! 4

drop9 :: String -> String
drop9 = drop 9

-- 3.
thirdLetter :: String -> Char
thirdLetter str = str !! 2

-- 4.
letterIndex :: Int -> Char
letterIndex x = "Curry is awesome!" !! x

-- 5.
rvrs :: String
rvrs =
  let str     = "Curry is awesome"
      curry   = take 5 str
      is      = drop 5 (take 9 str)
      awesome = drop 9 str
  in  awesome ++ is ++ curry

-- 6.
