--https://www.hackerrank.com/challenges/apple-and-orange/problem
input :: [Integer]
input = [7, 11, --house start-end
        5,15, --apple tree, orange tree
        3 ,2, -- m- # apples falling, n-# oranges falling
        -2, 2, 1, --distance apples and oranges(below) fell from tree
        5 ,-6]
solve :: [Int] -> [Int] 
solve (s:t:a:b:m:_:rest) = [as, os]
    where as = length $ filter( \x -> s <= x && x <= t) $ map(+ a ) $ take m rest 
          os = length $ filter( \x -> s <= x && x <= t) $ map(+ b) $ drop m rest  
--know length of input and how many lines there are so we can parse with that
--rest = array of positions that apples/oranges fell, use m to get their values
solve st = st 
main :: IO () 
main = interact $ unlines . map show . solve . map read . words 