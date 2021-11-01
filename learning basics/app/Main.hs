module Main where

main :: IO ()
-- main = putStrLn "5555"
s :: Integer -> Integer 
s 0 = 0
-- s n = n + s(n-1)
--recursive function, if input to n=0 return 0, else n+s(n-1)
--can probably be done using higher order functions, i.e. sum and range
s n = sum [1..n]
--[first..last], [first,second..last], [first..], [first,second..last] is range types
main = do
  n <- getLine 
  --input
  print (s(read n::Integer))
  --read n::Integer  reads input as Int 
  --print outputs non strs