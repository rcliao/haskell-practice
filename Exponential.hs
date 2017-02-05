main :: IO ()
main = print "Hello there"

e :: Double -> Double
e x = foldl (+) 0.0 [x**i / factorial i | i <- [0..9]]

factorial n = product [1..n]
