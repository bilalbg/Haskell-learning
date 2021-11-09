import Data.List
--https://www.hackerrank.com/challenges/mini-max-sum/problem
main :: IO ()
mmsum :: [Int] -> [Int]
mmsum x = [ sum (init sortedx), sum (tail sortedx) ]
    where sortedx = sort x 
main = interact $ unwords . map show . mmsum . map read . words 