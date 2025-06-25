f x = sqrt (1 + x)
-- Find an expression y(t) for the height
-- of the rock as a fn of time
yRock30 :: Double -> Double
yRock30 t = 30*t + 0.5*((-9.8)*t^2)
-- Find an expression v(t) for the velocity
-- of the rock as a fn of time
vRock30 :: Double -> Double
vRock30 t = 30 + (-9.8) * t

cubeRoot :: Double -> Double
cubeRoot = \x -> x ** (1/3)

g :: Double -> Double
g = \y -> (exp y) + 8*y

h :: Double -> Double
h = \x -> 1 / sqrt ( (x-5)**2 + 16 ) 

gamma :: Double -> Double
gamma = \beta -> 1 / sqrt ( 1 - beta**2 ) 

ux :: Double -> Double
ux = \x -> (1/10+x) + (1/10-x) 

bigL :: Double -> Double
bigL = \l -> sqrt(l * (l+1))

bigEx :: Double -> Double
bigEx = \x -> 1 / (abs x**3) 

bigEz :: Double -> Double
bigEz = \z -> 1 / ((z**2 + 4) ** (3/2)) 

sinDeg :: Double -> Double
sinDeg = \deg -> sin(deg*pi/180)

ex2 = do
    putStrLn ("\nExercise 2.1")
    putStrLn ("f(0) = " ++ show(f 0))
    putStrLn ("f(1) = " ++ show(f 1))
    putStrLn ("f(3) = " ++ show(f 3))

    putStrLn ("\nExercise 2.2")
    putStrLn ("y(0) = " ++ show(yRock30 0))
    putStrLn ("y(1) = " ++ show(yRock30 1))

    putStrLn ("\nExercise 2.3")
    putStrLn ("v(0) = " ++ show(vRock30 0))
    putStrLn ("v(1) = " ++ show(vRock30 1))
    
    putStrLn ("\nExercise 2.4")
    putStrLn ("sinDeg(30) = " ++ show(sinDeg 30))

    putStrLn ("\nExercise 2.5")
    putStrLn ("f(x) = " ++ show(cubeRoot 9))
    putStrLn ("g(y) = " ++ show(g 0))
    putStrLn ("h(x) = " ++ show(h 8))
    putStrLn ("gamma(beta) = " ++ show(gamma 0.1))
    putStrLn ("u(x) = " ++ show(ux 5))
    putStrLn ("bigL = " ++ show(bigL 1))
    putStrLn ("bigEx = " ++ show(bigEx (-1)))
    putStrLn ("bigEz = " ++ show(bigEz 0))
    
    putStrLn ("\nExercise 2.6")
    putStrLn ("gamma(beta) = " ++ show(gamma 0.8))

