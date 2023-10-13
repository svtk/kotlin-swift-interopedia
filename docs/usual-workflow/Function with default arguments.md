## Function with default arguments

You always have to specify all the function arguments. Improved interop available with SKIE.

### Explanations

In Kotlin, you can omit specifying the values of function arguments if they have default values:

```kotlin
class FunctionWithDefaultArgumentsClass {

    fun defaultParamsFunction(funcParam1: String, funcParam2: Int = 30): String {
        return "def"
    }
}

fun functionWithDefaultArgumentsExample() {
    // funcParam2 will be the default parameter
    FunctionWithDefaultArgumentsClass().defaultParamsFunction(funcParam1 = "1")
}
```

After switching to Swift, this feature disappears, and all arguments must be specified when calling the function:

```swift
FunctionWithDefaultArgumentsClass().defaultParamsFunction(funcParam1: "1", funcParam2: 100)
```

### SKIE

The recommended approach is to enable default argument interop using an annotation on individual functions where necessary.

```kotlin
class FunctionWithDefaultArgumentsClass(val arg1: Int = 1) {

    @DefaultArgumentInterop.Enabled
    fun functionWithDefaultArgument(arg2: Int = 2) {
        println(arg2)
    }

}
```

This will allow specifying only a subset of the arguments when calling the function.

```swift
let defaultArguments = FunctionWithDefaultArgumentsClass(arg1: 123)
defaultArguments.functionWithDefaultArgument()
```
---
[Table of contents](/README.md)