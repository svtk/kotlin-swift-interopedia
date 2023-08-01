## Constructors and functions with default arguments

### Explanation

In Kotlin, you can omit passing values as arguments to constructors and function calls if they have
default values.

```kotlin
class DefaultArguments(val arg1: Int = 1) {

    fun functionWithDefaultArgument(arg2: Int = 2) {
    }

}

fun main(){
    val defaultArguments = DefaultArguments()
    defaultArguments.functionWithDefaultArgument()
}
```

However, this is not possible in Swift. It's necessary to either provide values as arguments explicitly,
or use a bridge function (if this is used frequently).

```swift
fun main(){
    let defaultArguments = DefaultArguments(arg1: 1)
    defaultArguments.functionWithDefaultArgument(arg2: 2)
```
OR

```swift
fun main(){
    let defaultArguments = DefaultArgumentsBridgeKt.createDefaultArguments()
    DefaultArgumentsBridgeKt.functionWithDefaultArgument(defaultArguments: defaultArguments)
}
```

---
[Table of contents](/README.md)