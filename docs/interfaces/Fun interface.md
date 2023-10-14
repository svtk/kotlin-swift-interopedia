## Fun interface

You can't create an anonymous class in Swift.

### Explanations

In Kotlin, using `fun interface`-s you can use a more convenient syntax to describe the creation of anonymous lambdas:

```kotlin
fun interface FunInterfaceExample {
    fun singleFunctionInInterface(funInterfaceExample: String): String
}

interface NotFunInterface {
    fun singleFunctionInInterface(funInterfaceExample: String): String
}

fun example() {
    val notFun = object : NotFunInterface {
        override fun singleFunctionInInterface(funInterfaceExample: String): String {
            return "return"
        }
    }

    val listener = FunInterfaceExample {
        println("it: ${it}")
        "some return value"
    }
}
```

Swift [does not have a similar syntax for describing anonymous classes]((https://stackoverflow.com/questions/24408068/anonymous-class-in-swift)). You can, of course, do it as in one of the answers on StackOverflow, but it seems like some kind of big overhead:

```swift
class EmptyClass {

    var someFunc: () -> () = { }

    init(overrides: (EmptyClass) -> EmptyClass) {
        overrides(self)
    }
}

// Now you initialize 'EmptyClass' with a closure that sets
// whatever variable properties you want to override:

let workingClass = EmptyClass { ec in
    ec.someFunc = { print("It worked!") }
    return ec
}

workingClass.someFunc()  // Outputs: "It worked!"
```

---
[Table of contents](/README.md)