## Function returns lambda

The function that returned the lambda works without crashes; lambda can be called.

### Explanations

Let's describe a function that returns some kind of lambda in Kotlin:

```kotlin
// FunctionReturnsLambda.kt

fun returnLambda(): () -> Unit {
    println("Function that returns lambda")

    return {
        println("Lambda inside return")
    }
}

fun returnParametrizedLambda(): (String) -> Unit {
    println("Function that returns parametrized lambda")

    return {
        println("returnParametrizedLambda | it: $it")
    }
}

class FunctionReturnsLambdaExample() {
    fun example() {
        returnLambda().invoke()
        returnParametrizedLambda().invoke("123")
        println("FunctionReturnsLambdaExample: All ok")
    }
}
```

On the Swift side, this works correctly:

```swift
FunctionReturnsLambdaKt.returnLambda()()
let _ = FunctionReturnsLambdaKt.returnParametrizedLambda()("123")
```

---
[Table of contents](/README.md)