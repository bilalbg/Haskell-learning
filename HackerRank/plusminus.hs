--https://www.hackerrank.com/challenges/plus-minus/problem
import Data.Function
d = (/) `on` fromIntegral 
pm :: [Int] -> [Double]
pm xs = [d pones len, d nones len, d (len-pones-nones) len ]
    where pones = length $ filter (>= 1 ) xs
          nones = length $ filter (<= -1) xs
          len = length xs

main = interact $ unlines . map show . pm . map read . tail . words 