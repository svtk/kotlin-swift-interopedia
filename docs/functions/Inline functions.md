## Inline functions

Inline functions are in the .h file, they can be called.

### Explanations

Let's describe an inline function in Kotlin:

```kotlin
// InlineFunction.kt

inline fun inlineFunction(action: () -> Unit) {
    println("InlineFunction.inlineFunction() begin")
    action.invoke()
    println("InlineFunction.inlineFunction() end")
}
```

In Swift, this function is also available, it can be called without problems:

```swift
InlineFunctionKt.inlineFunction {
    print("I'm inside inline!!!")
}
```

---
[Table of contents](/README.md)