{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

import Data.Data (typeOf, typeOf1)

{-# HLINT ignore "Use max" #-}
{-# HLINT ignore "Redundant if" #-}
{-# HLINT ignore "Use if" #-}

-- im never using or defining a fn like this LOL
lessThan :: Double -> Double -> Double -> Bool
lessThan x y z =
  if x < y && y < z
    then x < z
    else False

-- Ex 3.2
f :: Double -> Double
f x =
  if x <= 0
    then 0
    else x

e :: Double -> Double
e r =
  if r <= 1
    then r
    else 1 / r ** 2

isXorY :: Char -> Bool
isXorY x = x == 'X' || x == 'Y'

bagFee :: Bool -> Int
bagFee x =
  if x
    then 100
    else 0

bagFee2 :: Bool -> Int
bagFee2 x = case x of
  True -> 100
  False -> 0

greaterThan50 :: Int -> Bool
greaterThan50 x = x > 50

amazingCurve :: Int -> Int
amazingCurve x = case x * 2 > 100 of
  True -> 100
  False -> x * 2

circleRadius :: Double
circleRadius = 3.5

-- It uses floats by def
cot :: Float -> Float
cot x = 1 / tan x

fe :: Float -> Float
fe epsilon = epsilon * tan (epsilon * pi / 2)

fo :: Float -> Float
fo epsilon = -(epsilon * cot (epsilon * pi / 2))

g :: Float -> Float -> Float
g nu epsilon = sqrt (nu ** 2 - epsilon ** 2)

ex3 = do
  print "Exercise 3.1"
  -- (False || True && False || True)
  --  og is fine, it is evaluated the same as bool algebra logic
  print (False || (True && False) || True)
  -- Just couple the statments before evaluation
  print ((2 / 3 / 4) == (4 / 3 / 2))
  -- (7 - 5 / 4 > 6 || 2 ^ 5 - 1 == 31)
  print ((7 - (5 / 4)) > 6 || ((2 ^ 5) - 1) == 31)
  -- (2 < 3 < 4) comparison op's only work on same type args
  print (2 < 3 && 2 < 4 && 3 < 4)
  print (lessThan 2 3 4)
  print (False < True)
  -- (2 < 3 && 3 < 4)
  print (2 < 3 && 3 < 4)

  -- This is just straight up wrong what
  -- you cant eval nums with bools
  -- (2 && 3 < 4)
  -- i guess they meant are 2 and 3 less than 4?
  print (2 < 4 && 3 < 4)

  print "Exercise 3.2"
  print (f (-1))
  print (f 0)
  print (f 1)

  print (e 1)
  print (e 2)

  print "Exercise 3.3"
  print (isXorY 'X') -- true
  print (isXorY 'Y') -- true
  print (isXorY 'Z') -- false
  print "Exercise 3.4" -- all should be true
  print (bagFee2 False == 0)
  print (bagFee2 True == 100)
  print (bagFee True == bagFee2 True)
  print (bagFee False == bagFee2 False)

  print "Exercise 3.5" -- all should be true
  print (greaterThan50 50 == False)
  print (greaterThan50 51 == True)

  print "Exercise 3.6" -- all should be true
  print (amazingCurve 50 == 100)
  print (amazingCurve 51 == 100)
  print (amazingCurve 49 == 2 * 49)

  print "Exercise 3.7"
  print "What is the type of the expression bagFee False using the definition of bagFee you wrote in Exercise 3.4?"
  print "Bool"

  print "What is the value of the expression bagFee False using that definition of bagFee?"
  print (bagFee False == 0)

  print "Exercise 3.8"
  print "circleRadius :: Double"
  print "cot :: Float -> Float"
  print "fe :: Float -> Float"
  print "fo :: Float -> Float"
  print "g :: Float -> Float -> Float"
  
  print "Exercise 3.9"
  print "There are only a finite number of functions with type Bool -> Bool. How many are there? "
  putStrLn ("The not operator: " ++ show(typeOf (not))) 
  print "What would be good names for them?"
  print "Boolean unary operators"
  print "How many functions have type Bool -> Bool -> Bool?"
  putStrLn ("The AND operator: " ++ show(typeOf (&&))) 
  putStrLn ("The OR operator: " ++ show(typeOf (||))) 
  
  print "Exercise 3.10"
  print "Devise an expression using True, False, &&, and || that would come out differently if the precedence of || was higher than the precedence of &&."
  print ( True || True && False  )
  print ( (True || True) && False  )