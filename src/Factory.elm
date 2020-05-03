module Factory exposing
    ( Car
    , Factory
    , createCarFactory
    , createGreenCarFactory
    , dieselCar
    , electricCar
    , hydrogenCar
    )

{-| Dummy factory. Trying to implement it with a generic "data" field
distracts from the puzzle.
-}


type Factory
    = Factory


createCarFactory : (data -> List (Car fuel)) -> Factory
createCarFactory factoryFn =
    Factory


createGreenCarFactory : (data -> List (Car { green : () })) -> Factory
createGreenCarFactory factoryFn =
    Factory



-- CARS


type Car fuel
    = ElectricCar
    | HydrogenCar
    | DieselCar


electricCar : Car fuel
electricCar =
    ElectricCar


hydrogenCar : Car fuel
hydrogenCar =
    HydrogenCar


dieselCar : Car {}
dieselCar =
    DieselCar
