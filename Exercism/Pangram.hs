module Exercism.Pangram where

import Data.Char (toLower)

isPangram :: String -> Bool
isPangram text = all (`elem` lowerText) ['a'..'z'] 
--elem checks if elem checks if each char in a..z is in texts
    where lowerText = map toLower text 
    --lower case input 


main :: IO()
main = do 
    print (isPangram "The quick brown fox jumps over the lazy dog.")
    --checks if every char from a-z in string 