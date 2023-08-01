## Data class

TL;DR: Not all features of data classes are preserved / there are features with copy

### Explanations

Let's describe the usual data class in Kotlin:

```kotlin
data class DataClass(
    val param1: String,
    val param2: Int,
    val param3: Boolean
)
```

#### Method `copy`

The method copy is ported to Swift with the name doCopy, works similarly to the method in Kotlin, but there is an inconvenience [with the need to specify all the function arguments](https://github.com/pahill/kotlin-swift-interopedia/blob/main/docs/usual-workflow/Function%20with%20default%20arguments.md).

#### Method `equals`

Comparing two instances of a data class works similarly to Kotlin, including comparing collections. The equivalent function is isEquals in Swift.

#### Method `toString`

When using a data class object in a line, the output is the same as in Kotlin:

```swift
let data = DataClass(param1: "abc", param2: 123, param3: true)
print("data = \(data)")
```

The equivalent function is description in Swift.

#### Destructuring

This feature of Kotlin does not work.

---
[Table of contents](/README.md)