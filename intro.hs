-- the classic hello world
-- main is defined as a set of instructions to run
-- you can run by either compiling with ghc and then run
-- or `ghci intro.hs` and type the fn name
main = do
  putStrLn "Hello, everybody!"
  putStrLn ("Please look at my favorite even numbers: " ++ show (filter even [10..20]))