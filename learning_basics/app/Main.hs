module Main where
import Prelude
--used Prelude for length function
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
--[input types] -> output type
t a b c d = a*b + c*d + a*c + b*d 

listlength :: [Integer]->Int
listlength [] = 0
listlength (_:xs) = 1 + listlength xs
--goes through entire list to get length

sumeverytwo :: [Integer]->[Integer] 
sumeverytwo []=[]
sumeverytwo [x] = [x]
sumeverytwo (x:(y:z)) = x+y : sumeverytwo z
--returns list of [x+y] with each call and appends to initial call

-- add :: Integer -> Integer -> Integer
add :: Num a => a -> a -> a
--Num a=> is context, a->a->a is inputs and output 
--a is instance of Num, which is a typeclass (supports numeric types)
add x y = x + y
inc :: Num a=> a -> a
inc = add 1
--pre apply argument to function, so inc can be called with a single argument(y) resulting in add 1 y 
addtwice :: (t -> t) -> t -> t
--(t->t) indicates a function is a parameter, input of type t, output type t
-- ->t->t indicates that this function takes a value of type t and returns type t
--brackets required to indicate that a function is a parameter 
addtwice f x = f (f x)

main = do
  n <- getLine 
  --input
  let lst = [1,2,3,4]
  print (s(read n::Integer))
  --read n::Integer  reads input  as Int 
  print (map s lst)
  print ( listlength lst == length lst)
  print(sumeverytwo lst)
  print (inc 2)
  print (addtwice inc 2)
  print ( map (addtwice inc) lst)
  --map maps function to each element in list here