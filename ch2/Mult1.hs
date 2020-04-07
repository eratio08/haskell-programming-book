module Mult1 where

mult1 = x * y
 where
  x = 5
  y = 6

mult1' =
  let x = 5
      y = 6
  in  x * y

mult1'1 =
  let x = 3
      y = 1000
  in  x * 3 + y

mult1'2 =
  let y = 10
      x = 10 * 5 + y
  in  x * 5

mult1'3 =
  let x = 7
      y = negate x
      z = y * 10
  in  z / x + y
