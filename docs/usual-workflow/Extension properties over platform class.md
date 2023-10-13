## Extension properties over platform class

A wrapper class appears with a function that accepts an object of the desired class.

### Explanations

A platform class is, for example, some primitive type, or a class specific to a particular platform (`Bundle` for Android, `UILabel` for iOS, etc.).

In Kotlin, there is no difference in using an extension over a regular or platform class:

```kotlin
//ExtensionPropertyPlatformClass.kt

val String.myExtensionProperty: String get() = "789"

fun extensionPropertyPlatformClassExample() {
    println("123".myExtensionProperty)
}
```

After switching to Swift, the difference manifests itself in the appearance of a wrapper class for calling a function that has the same name as the property name:

```swift
ExtensionPropertyPlatformClassKt.myExtensionProperty("123")
```

---
[Table of contents](/README.md)