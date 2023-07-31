## Constructors and functions with default arguments

### Explanation

In Kotlin, you can omit passing values as arguments to constructors and function calls if they have
default values.

```kotlin
class DefaultArguments(val arg1: Int = 1) {

    fun callFunctionWithDefaultArgument(arg2: Int = 2) {
    }

}

fun main(){
    val defaultArguments = DefaultArguments()
    defaultArguments.callFunctionWithDefaultArgument()
}
```

However, this is not possible in Swift. It's necessary to either provide values as arguments explicitly,
or use a bridge function.

```swift
fun main(){
    let defaultArguments = DefaultArguments(arg1: 1)
    defaultArguments.callFunctionWithDefaultArgument(arg2: 2)
```
OR

```swift
fun main(){
    let bridge = DefaultArgumentsBridge()
    let defaultArguments = bridge.createDefaultArguments()
    bridge.callDefaultArguments(defaultArguments: defaultArguments)
```

---
[Table of contents](/README.md)