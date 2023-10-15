## Functions with overloads

There are some peculiarities when using the same parameter names.

### Explanations

In Kotlin, we can easily overload some functions with arguments with the same name, there will be no changes in the signature:

```kotlin
// FunctionsWithOverloads.kt

fun overloadFunction(param: Int) {  
    println("Utility.overloadFunction(param: Int) | $param")  
}  
  
fun overloadFunction(param: Long) {  
    println("Utility.overloadFunction(param: Long) | $param")  
}  
  
fun overloadFunction(param: Float) {  
    println("Utility.overloadFunction(param: Float) | $param")  
}  
  
fun overloadFunction(param: Double) {  
    println("Utility.overloadFunction(param: Double) | $param")  
}  
  
fun overloadFunction(param: String) {  
    println("Utility.overloadFunction(param: String) | $param")  
}  
  
fun overloadFunction(param: Boolean) {  
    println("Utility.overloadFunction(param: Boolean) | $param")  
}
```

When compiled in Swift, an underscore is added to the parameter name to distinguish functions from each other. For each subsequent function, another one is added. 

```swift
FunctionsWithOverloadsKt.overloadFunction(param: true)  // Bool
FunctionsWithOverloadsKt.overloadFunction(param_: 2.0)  // Double
FunctionsWithOverloadsKt.overloadFunction(param__: 2.0) // Float
FunctionsWithOverloadsKt.overloadFunction(param___: 2)  // Int32
FunctionsWithOverloadsKt.overloadFunction(param____: 4) // Int64
FunctionsWithOverloadsKt.overloadFunction(param_____: "123")
```

Accordingly, if you use different parameter names each time, then everything will be fine.

In Kotlin it is:

```kotlin
//FunctionsWithOverloads2.kt

fun anotherOverload(intParam: Int) {
    println("anotherOverloadsWithDifferNames.kt.anotherOverload(param: Int) | $intParam")
}

fun anotherOverload(longParam: Long) {
    println("anotherOverloadsWithDifferNames.anotherOverload(param: Long) | $longParam")
}

fun anotherOverload(floatParam: Float) {
    println("anotherOverloadsWithDifferNames.anotherOverload(param: Float) | $floatParam")
}
```

In Swift it is:

```swift
funс example() {
    FunctionsWithOverloads2Kt.anotherOverload(intParam: 1)
    FunctionsWithOverloads2Kt.anotherOverload(longParam: 1)
    FunctionsWithOverloads2Kt.anotherOverload(floatParam: 1.0)
}
```

---
[Table of contents](/README.md)