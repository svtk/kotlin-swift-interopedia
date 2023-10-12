## Generic functions

No automatic type inference, nullability features.

### Explanations

Let's write a simple generic function that takes generic as input and returns the same.

```kotlin
fun <T> convert(data: T): T {  
    return data  
}

private fun example() {
    val s: String = convert("322")
    val p: Int = convert(122)
    val l: Long = convert(122L)
}
```

On the Swift side, the type `T` is interpreted as `Any?`, which means that additional type casts have to be introduced:

```swift
let result1: Int = GenericFunctionsKt.convert(data: 12) as! Int
let result2: String = GenericFunctionsKt.convert(data: "'222'") as! String
```

In order for Swift to see that the type is definitely not null, you need to use the boundary syntax on the Kotlin side:

```kotlin
fun <T : Any> strictedGeneric(data: T): T {  
    return data  
}
```

Then the function `strictedGeneric` on the Swift side returns `Any`, not `Any?`.

But there is no automatic type inference.

---
[Table of contents](/README.md)