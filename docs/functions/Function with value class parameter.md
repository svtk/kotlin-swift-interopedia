## Function with value class parameter

The function appeared in the .h file, but the value class argument was turned into primitives.

### Explanations

Let's describe a function that takes a value class as input:

```kotlin
//FunctionWithValueClassParameter.kt

@JvmInline
value class ValueClassExample(val t: Int)

fun valueClassUsageExample(v: ValueClassExample): String {
    return "Value class usage example | ${v.t}"
}
```

On the Swift side, the function `valueClassUsageExample` is present, but since [the value class itself was not included in the .h file](/docs/classes/InlineClass.md), the argument is expanded into separate primitives:

```swift
//Type of v is Int32
FunctionWithValueClassParameterKt.valueClassUsageExample(v: 40)
```

---
[Table of contents](/README.md)