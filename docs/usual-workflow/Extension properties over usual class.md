## Extension properties over usual class

The property can be accessed through the class object.

### Explanations

Let's declare an extension property for a custom type in Kotlin code:

```kotlin
//ExtensionPropertyUsualClass.kt

class ExtensionPropertyUsualClass {}

val ExtensionPropertyUsualClass.extensionProperty: String get() = "123"
```

On the Swift side, we can use this property similarly to Kotlin, on an object of the desired class:

```swift
ExtensionPropertyUsualClass().extensionProperty
```

---
[Table of contents](/README.md)