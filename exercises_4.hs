{- 
The correspondence of functions in Haskell
is pretty much one to one

Since it's a functional paradigmn we can feed functions
into other functions. Taking advantage of this we could
define an averageVelocity2 function that takes the time intervals
-}

-- We have to define type aliases for easier reading
-- type R as in real number
type R = Double

type Time = R
type TimeInterval = R
type Position = R
type Velocity = R

-- We let haskell know the parameters for the fn
type PositionFunction = Time -> Position
type VelocityFunction = Time -> Velocity

averageVelocity :: Time -> Time -> PositionFunction -> Velocity
averageVelocity t0 t1 x = (x t1 - x t0) / (t1 - t0)
averageVelocity2 :: Time -> TimeInterval -> PositionFunction -> Velocity
averageVelocity2 t dt x = (x (t + dt/2) - x (t - dt/2)) / dt

type Derivative = (R -> R) -> R -> R
derivative :: R -> Derivative
derivative dt x t = ( x (t + dt/2) - x (t - dt/2) ) / dt

-- We can define now a pos function of any kind
-- and get its derivative through currying
myPosition :: Time -> Position
myPosition = cos

myVelocity :: Time -> Velocity
myVelocity = derivative 0.01 myPosition
