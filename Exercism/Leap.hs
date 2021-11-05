module Exercism.Leap where
    
isleapyear :: Integer -> Bool  
isleapyear a 
    | (mod a 100 == 0 || mod a 4 /=0 )&& mod a 400 /= 0 = False
    | otherwise = True 

isleapyeartwo :: Integer -> Bool 
isleapyeartwo year 
    | divisibleby 400 = True 
    | divisibleby 100 = False 
    | divisibleby 4 = True 
    | otherwise = False 
    where divisibleby x = mod year x == 0 


main :: IO()
main = do
    n <- getLine
    print (isleapyear (read n::Integer))
    --check if year == leap year