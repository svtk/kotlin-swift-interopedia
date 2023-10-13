## Extension properties for companion object of usual class

The property can be accessed through the companion object.

### Explanations

On the Kotlin side, they declared an extension property for the companion object of a regular class:

```kotlin
class ExtensionPropertiesCompanionObjectUsualClass {
    companion object {
    }
}

val ExtensionPropertiesCompanionObjectUsualClass.Companion.EXT_PROP: String get() = "456"
```

From Swift, this property is accessed through an object companion, which [can be accessed through a class](/docs/usual-workflow/Companion%20object.md):

```swift
ExtensionPropertiesCompanionObjectUsualClass.companion.EXT_PROP
```

---
[Table of contents](/README.md)