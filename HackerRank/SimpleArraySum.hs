module HackerRank.SimpleArraySum where

main :: IO ()
--https://www.hackerrank.com/challenges/simple-array-sum/problem
main = interact $ show . sum . map read . tail . words
--using tail because input on hackerrank gives the array length too 