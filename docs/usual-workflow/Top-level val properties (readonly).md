## Top-level val properties (readonly)

A wrapper class for accessing the property appears: TopLevelPropertyKt.topLevelProperty.

### Explanations

We describe the top-level val property in Kotlin in file `TopLevelProperty.kt`:

```kotlin
//TopLevelProperty.kt

val topLevelProperty = "Some value"
```

In Kotlin, similar code can be called directly, without specifying the file name, just specify `import` the desired property.

On the Swift side, [we get a wrapper class `TopLevelPropertyKt`](https://kotlinlang.org/docs/native-objc-interop.html#top-level-functions-and-properties) (file name in Kotlin + suffix Kt), with which you can access the desired property:

```swift
let _ = TopLevelPropertyKt.topLevelProperty
```

The property is `readonly`, it cannot be changed.

---
[Table of contents](/README.md)