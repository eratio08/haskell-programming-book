module Print3 where

import           Data.List

myGreeting :: String
myGreeting = "hello" ++ " world!"

hello :: String
hello = "hello"

world :: String
world = "world!"

myConcat :: [String] -> String
myConcat = foldr (++) ""

main :: IO ()
main = do
  putStrLn myGreeting
  putStrLn secondGreeting
  putStrLn thirdGreeting
 where
  secondGreeting = concat [hello, " ", world]
  thirdGreeting  = myConcat [hello, " ", world]
