module Reverse where

rvrs :: String
rvrs =
  let str     = "Curry is awesome"
      curry   = take 5 str
      is      = drop 5 (take 9 str)
      awesome = drop 9 str
  in  awesome ++ is ++ curry


main :: IO ()
main = print rvrs
