## Function with lambda arguments
A function that takes one or more lambdas as arguments converts normally in Swift.

### Explanations

Let's describe several functions that use lambdas from their arguments in Kotlin:

```kotlin
// FunctionWithLambdaArgs.kt
fun funcWithLambda(calculation: () -> Int): Int {
    return 100 + calculation.invoke()
}

fun funcWithSeveralLambdas(
    calculation: () -> Int,
    formatting: (String) -> String
): String {
    val calculationResult = calculation.invoke()
    return formatting.invoke(calculationResult.toString())
}

fun funcWithParametrizedLambda(parametrizedLambda: (String) -> String): String {
    return "FunctionWithLambdaArgs.funcWithParametrizedLambda(resultFromLambda: ${parametrizedLambda.invoke("paramForLambda")})"
}

fun funcWithUnitLambda(unitLambda: () -> Unit) {
    println("FunctionWithLambdaArgs.funcWithUnitLambda() begin")
    unitLambda.invoke()
    println("FunctionWithLambdaArgs.funcWithUnitLabmda() end")
}
```

On the Swift side, use also looks convenient:

```swift
// Lambda with result usage
let result1 = FunctionWithLambdaArgsKt.funcWithLambda(calculation: {
    print("FunctionWithLambdaArgsKt.funcWithLambda | inside lambda --> ")
    return 2
})
let result2 = FunctionWithLambdaArgsKt.funcWithLambda {
    return 30
}
print("result1: \(result1) , result2: \(result2)")

// Parametrized lambda example
let result3 = FunctionWithLambdaArgsKt.funcWithParametrizedLambda(parametrizedLambda: { arg in
    return "funcWithParametrizedLambda | arg: \(arg)"
})
let result4 = FunctionWithLambdaArgsKt.funcWithParametrizedLambda { arg in
    return "funcWithParametrizedLambda | arg: \(arg)"
}
let result5 = FunctionWithLambdaArgsKt.funcWithParametrizedLambda {_ in
    return "funcWithParametrizedLambda | skip argument using"
}
print("result3: \(result3) , result4: \(result4), result5: \(result5)")

// Unit lambda in args
FunctionWithLambdaArgsKt.funcWithUnitLambda {
    print("funcWithUnitLambda called")
}

// Several lambdas in args
let result6 = FunctionWithLambdaArgsKt.funcWithSeveralLambdas(
    calculation: {
        return 2
    }, formatting: { arg in
        return "Some \(arg)"
    }
)
print("funcWithSeveralLambdas \(result6)")
```

---
[Table of contents](/README.md)