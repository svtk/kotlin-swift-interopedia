## Function with vararg parameter

varargs are not mapped to Swift's variardic parameters, but instead to KotlinArray.

### Explanations

Let's describe a function that uses vararg-arguments in Kotlin:

```kotlin
// FunctionWithVarargParameter.kt

fun funcWithVararg(vararg item: String) {
    println(item.joinToString { "$it | " })
}
```

In Swift code, this turns into a function that takes `KotlinArray<NSString>`.

```swift
let arr = KotlinArray<NSString>(
    size: 10,
    init: { index in "\(index)" as NSString }
)
FunctionWithVarargParameterKt.funcWithVararg(item: arr)
```

[YouTrack has an issue about this problem](https://youtrack.jetbrains.com/issue/KT-42925), but variardic parameters in Objective-C are compile time arguments, and Kotlin cannot simply take and convert vararg.

---
[Table of contents](/README.md)