module Factory exposing
    ( Car
    , Factory
    , Green
    , Polluting
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


createGreenCarFactory : (data -> List (Car Green)) -> Factory
createGreenCarFactory factoryFn =
    Factory



-- CARS


type Car fuel
    = ElectricCar
    | HydrogenCar
    | DieselCar


type Polluting
    = Polluting


type Green
    = Green


electricCar : Car fuel
electricCar =
    ElectricCar


hydrogenCar : Car fuel
hydrogenCar =
    HydrogenCar


dieselCar : Car Polluting
dieselCar =
    DieselCar
