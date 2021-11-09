--not hackerrank
--return the middle char if odd len, else return 2 middle chars 

middlechar :: String -> String 
middlechar s 
    | even len = [s !! (halfN-1),  s !! halfN ]
    | otherwise = [s !! halfN ]
    where len = length s 
          halfN = len `div` 2 
    -- !! indexes list