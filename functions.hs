-- f(x) = x^3 in haskell translates to
-- f x = x**3 
-- haskell takes spaces as arguments, like LISP

-- we can define this polynomial like this
-- x here is defined temporarily, calling it results in error
-- :3:1: error: [GHC-88464] Variable not in scope: x 
f x = x**2 - 3*x + 2

h y = y**2 - 3*y + 2

-- or we could define it as lambda and not declare x
g = \x -> x**2 - 3*x + 2
fn = do
    -- we can define this polynomial like this
    -- to prove that y is declared, i defined h here
    -- then run it
    putStrLn ("Value of x" ++ show (h 2)) 
    putStrLn ("Output of f(2): " ++ show (f 2)) 
    putStrLn ("Output of g(2): " ++ show (g 2)) 
    putStrLn ("Is the output for both functions the same? " ++ show  ((g 2) == (f 2)))