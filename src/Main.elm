module Main exposing (main)

import Factory exposing (Factory)
import Html exposing (Html)


anyCarFactory : Factory
anyCarFactory =
    Factory.createCarFactory
        (\_ ->
            [ Factory.dieselCar
            , Factory.electricCar
            , Factory.hydrogenCar
            ]
        )


greenCarFactory : Factory
greenCarFactory =
    Factory.createGreenCarFactory
        (\_ ->
            [ Factory.electricCar
            , Factory.hydrogenCar
            ]
        )



-- NOT OK


invalidFactory : Factory
invalidFactory =
    Factory.createGreenCarFactory
        (\_ ->
            [ Factory.dieselCar
            , Factory.electricCar
            , Factory.hydrogenCar
            ]
        )


main : Html msg
main =
    Html.text "Nothing to see"
