module Main where

main :: IO ()
-- main = putStrLn "5555"
s :: Integer -> Integer 
-- s 0 = 0
-- s n = n + s(n-1)
--recursive function, if input to n=0 return 0, else n+s(n-1)
--can be done using higher order functions, i.e. sum and range
s n = sum [1..n]
--[first..last], [first,second..last], [first..], [first,second..last] is range types
t :: Integer -> Integer -> Integer -> Integer -> Integer 
t a b c d = a*b + c*d + a*c + b*d 

listLength :: [Integer]->Integer
listLength [] = 0
listLength (_:xs) = 1 + listLength xs

sumeverytwo :: [Integer]->[Integer] 
sumeverytwo []=[]
sumeverytwo [x] = [x]
sumeverytwo (x:(y:z)) = x+y : sumeverytwo z

main = do
  n <- getLine 
  --input
  let lst = [1,2,3,4]
  print (s(read n::Integer))
  print (map s lst)
  print ( listLength lst)
  print(sumeverytwo lst)
  --read n::Integer  reads input as Int 
  --print outputs non strs