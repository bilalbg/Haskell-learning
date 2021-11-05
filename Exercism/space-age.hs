module Exercism.Space where

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune

ageOn::Planet->Float->Float 
-- ageOn Mercury seconds = ageYears seconds 0.2408467 
-- ageOn Venus seconds = ageYears seconds 0.61519726
-- ageOn Earth seconds = ageYears seconds 1
-- ageOn Mars seconds = ageYears seconds 1.8808158
-- ageOn Jupiter seconds = ageYears seconds 11.862615 
-- ageOn Saturn seconds = ageYears seconds 29.447498 
-- ageOn Uranus seconds = ageYears seconds 84.016846
-- ageOn Neptune seconds = ageYears seconds 164.79132 
ageOn planet seconds = case planet of 
    Mercury -> ageYears seconds 0.2408467 
    Venus -> ageYears seconds 0.61519726
    Earth -> ageYears seconds 1 
    Mars ->  ageYears seconds 1.8808158 
    Jupiter ->  ageYears seconds 11.862615 
    Saturn ->  ageYears seconds 29.447498 
    Uranus -> ageYears seconds 84.016846 
    Neptune ->  ageYears seconds 164.79132 

ageYears::Float -> Float -> Float 
ageYears seconds period  = seconds/ ( 86400 * (365.25 * period) ) 
--31556926 = 3600*24*365.242199

main :: IO()
main = do
    print (ageOn Mercury 50000)
    --convert seconds to years based on planet