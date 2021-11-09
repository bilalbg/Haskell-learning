import Data.List
--https://www.hackerrank.com/challenges/mini-max-sum/problem
main :: IO ()
mmsum :: [Int] -> [Int]
mmsum x = [ sum (init sortedx), sum (tail sortedx) ]
    where sortedx = sort x 
mmsumtwo :: [Int] -> [Int] 
mmsumtwo x = [sumx - maximum x, sumx - minimum x]
    where sumx = sum x 
main = interact $ unwords . map show . mmsumtwo . map read . words 