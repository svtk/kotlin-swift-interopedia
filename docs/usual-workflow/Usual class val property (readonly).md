## Usual class val property (readonly)

The property is accessible from the class object and is a readonly property.

### Explanations

Let's declare a simple class on the Kotlin code side:

```kotlin
class UsualClassValProperty(
    val param: String
) {
    
    val property: String get() = "123"
    
}
```

On the Swift side, we can access both the fields declared in the constructor and the properties declared inside the class:

```swift
let myClass = UsualClassValProperty(param: "123")

let _ = myClass.param
let _ = myClass.property
```

---
[Table of contents](/README.md)