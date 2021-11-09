import Data.List 
fibs :: [Int]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
--infinite sequence 

main ::IO()
main = putStr $ show $ take 50 fibs