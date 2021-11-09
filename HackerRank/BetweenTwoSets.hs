--https://www.hackerrank.com/challenges/between-two-sets/problem

bts :: [Int] -> Int
bts (a:_:xs) = length $ filter(\x -> gcds `mod` x == 0 )$ takeWhile (<=gcds) $ map (*factors) [1..]
    where arra = take a xs 
          arrb = drop a xs 
          factors = foldl1 lcm arra 
          gcds = foldl1 gcd arrb 

main :: IO ()
main = interact $ show . bts . map read . words 