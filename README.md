# Solution for the factory puzzle

The puzzle was described here: TODO

To test, run:

```bash
elm make src/Main.elm
```

The project does not compile on purpose, to show that something we wanted to be forbidden is impossible.

```
-- TYPE MISMATCH -------------------------------------------------- src/Main.elm

The 1st argument to `createGreenCarFactory` is not what I expect:

34|     Factory.createGreenCarFactory
35|>        (\_ ->
36|>            [ Factory.dieselCar
37|>            , Factory.electricCar
38|>            , Factory.hydrogenCar
39|>            ]

This argument is an anonymous function of type:

    data -> List (Factory.Car Factory.Polluting)

But `createGreenCarFactory` needs the 1st argument to be:

    data -> List (Factory.Car Factory.Green)
```
