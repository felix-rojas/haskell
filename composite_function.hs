-- All these functions should output the same result
-- this is a composite function (cos x)²

-- Literally square the cos of x
cosSq :: Double -> Double
cosSq x = square(cos x)

-- Application operator takes the output from the right function
-- and takes it to the left functionh
cosSq' :: Double -> Double
cosSq' x = square $ cos x

-- This is the literal representation of a composite function
-- like (g°f) x
cosSq'' :: Double -> Double
cosSq'' x = (square . cos) x

-- here it is defined as a composite function
-- it will work as long as the input type 
cosSq''' :: Double -> Double
cosSq''' = square . cos