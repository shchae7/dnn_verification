Properties set on ReluplexCav2017/check_properties/property1 directory

Input constraints/ranges
```
// property3/main.cpp line 335 ~ 352

//     Range min: 1500
//     Range max: 1800
reluplex.setLowerBound( nodeToVars[Index(0, 0, true)], normalizeInput( 0, 1500, neuralNetwork ) );
reluplex.setUpperBound( nodeToVars[Index(0, 0, true)], normalizeInput( 0, 1800, neuralNetwork ) );

//     Theta min: -0.06
//     Theta max: 0.06
reluplex.setLowerBound( nodeToVars[Index(0, 1, true)], normalizeInput( 1, -0.06, neuralNetwork ) );
reluplex.setUpperBound( nodeToVars[Index(0, 1, true)], normalizeInput( 1, 0.06, neuralNetwork ) );

//     Bearing min: 3.10
reluplex.setLowerBound( nodeToVars[Index(0, 2, true)], normalizeInput( 2, 3.10, neuralNetwork ) );

//     Speed own min: 980
reluplex.setLowerBound( nodeToVars[Index(0, 3, true)], normalizeInput( 3, 980, neuralNetwork ) );

 //     Speed int min: 960
reluplex.setLowerBound( nodeToVars[Index(0, 4, true)], normalizeInput( 4, 960, neuralNetwork ) );
```

Input normalized via normalizeInput function
```
double normalizeInput( unsigned inputIndex, double value, AcasNeuralNetwork &neuralNetwork )
{
    double min = neuralNetwork._network->mins[inputIndex];
    double max = neuralNetwork._network->maxes[inputIndex];
    double mean = neuralNetwork._network->means[inputIndex];
    double range = neuralNetwork._network->ranges[inputIndex];

    if ( value < min )
        value = min;
    else if ( value > max )
        value = max;

    return ( value - mean ) / range;
}
```

Output constraints
```
// property3/main.cpp line 260 ~ 266

// Mark the output constraints variable as basic, too.
// The target output is the smallest, i.e. most recommended.
for ( const auto &it : outputVarToConstraintNode )
{
    reluplex.markBasic( it.second );
    reluplex.setUpperBound( it.second, 0.0 );
}
```