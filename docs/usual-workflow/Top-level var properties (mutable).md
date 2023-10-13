## Top-level var properties (mutable)

A wrapper class for accessing the property appears: TopLevelPropertyMutable.topLevelPropertyMutable.

### Explanations

We describe the top-level var property in Kotlin in file `TopLevelPropertyMutable.kt`:

```kotlin
//TopLevelPropertyMutable.kt

var topLevelPropertyMutable = "Some value"
```

In Kotlin, similar code can be called directly, without specifying the file name, just specify `import` the desired property.

On the Swift side, [we get a wrapper class `TopLevelPropertyMutableKt`](https://kotlinlang.org/docs/native-objc-interop.html#top-level-functions-and-properties) (file name in Kotlin + suffix Kt), with which you can access the desired property:

```swift
let _ = TopLevelPropertyMutableKt.topLevelPropertyMutable
```

The property is mutable:

```swift
TopLevelPropertyMutableKt.topLevelPropertyMutable = "Changed from Swift"
```

---
[Table of contents](/README.md)