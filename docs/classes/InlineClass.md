## Inline classes

### Explanation

In Kotlin, you can create an inline (value) class to wrap around a single value, without the performance
hit at runtime.

```kotlin
@JvmInline
value class InlineClass(val arg1: Int) {
}

fun main(){
    //No instantiation of the class InlineClass happens, at runtime inlineClass contains just Int.
    val inlineClass = InlineClass(1)
}
```

However, this is feature is not available in Swift as the class is not in the .h file.

---
[Table of contents](/README.md)