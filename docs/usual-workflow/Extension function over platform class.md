## Extension function over platform class

A wrapper class appears with a method that accepts an object of the desired class.

### Explanations

A platform class is, for example, some primitive type, or a class specific to a particular platform (`Bundle` for Android, `UILabel` for iOS, etc.).

In Kotlin, there is no difference in using an extension over a regular or platform class:

```kotlin
//ExtensionFunctionOverPlatformClass.kt

fun String.extensionFunctionOverStringClass() {
    println(this) //Do something
}

fun extensionFunctionOverPlatformClassExample() {
    "123".extensionFunctionOverStringClass()
}
```

After moving to Swift, the difference manifests itself in the appearance of a wrapper class for calling a function:

```swift
ExtensionFunctionOverPlatformClassKt.extensionFunctionOverStringClass("123")
```

---
[Table of contents](/README.md)