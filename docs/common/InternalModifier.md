## Internal modifier

### Explanation

In Kotlin, you can mark classes, functions, and properties with the keyword internal. This means these
are only visible within their compilation unit.

```kotlin
internal class InternalModifier {
    internal fun internalFunction() {
    }

    internal val internalProperty = 1
}
```

This means that these classes, functions, and properties are not exported and therefore not available
in Swift. This is a good way to limit the public API of the common code. 

---
[Table of contents](/README.md)