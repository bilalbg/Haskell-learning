module HackerRank.GradingStudents where

main :: IO ()
--https://www.hackerrank.com/challenges/grading/problem
round5:: Int -> Int 
round5 x 
    | x >= 38 && (m5 - x) < 3 = m5 
    | otherwise = x
    where m5 = x + (5 - x `mod` 5 )

main = interact $ unlines . map (show . round5 . read) . tail . words