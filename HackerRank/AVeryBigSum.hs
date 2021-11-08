module HackerRank.AVeryBigSum where

main :: IO () 
--https://www.hackerrank.com/challenges/a-very-big-sum/problem
main = interact $ show . sum . map read . tail . words
-- long arithmetic is built into haskell (Integer type vs Int)