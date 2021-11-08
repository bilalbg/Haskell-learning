module HackerRank.SolveMeFirst where

main :: IO ()
--https://www.hackerrank.com/challenges/solve-me-first/problem
--only need the below part on hackerrank
main = interact $ show . sum . map read . words