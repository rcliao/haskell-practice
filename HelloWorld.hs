#!/usr/bin/env stack
--stack --install-ghc runghc

doubleMe x = x + x
doubleUs x y = doubleMe x + doubleMe y

doubleSmallerNumber x = if x > 100 then x else x * 2

removeNonUppercase :: String -> String
removeNonUppercase st = [ c | c <- st, c `elem` ['A' .. 'Z']]

addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial(n - 1)

circumference :: Float -> Float
circumference r = 2 * pi * r

lucky :: (Integral a) => a -> String
lucky 7 = "Lucky you!"
lucky x = "Sorry, but you are out of luck, pal!"

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    let smallerSorted = quicksort [a | a <- xs, a <= x]
        biggerSorted = quicksort [a | a <- xs, a > x]
    in smallerSorted ++ [x] ++ biggerSorted

main :: IO ()
main = putStrLn "Hello World"
