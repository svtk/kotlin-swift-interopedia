## Constructor with default arguments

You always have to specify all the arguments for a constructor. Improved interop available with SKIE.

### Explanations

In Kotlin, you can omit specifying the values of constructor fields if they have default values:

```kotlin
class ConstructorWithDefaultArgumentsClass(
    val param1: String,
    val param2: Int = 300,
    val param3: Boolean = false
)

fun constructorWithDefaultArgumentsExample() {
    ConstructorWithDefaultArgumentsClass(param1 = "123")
}
```

After switching to Swift, this feature disappears, and all arguments must be specified when initializing an object:

```swift
ConstructorWithDefaultArgumentsClass(param1: "123", param2: 500, param3: false)
```

### SKIE

By enabling default arguments on SKIE, it's possible to only specify a subset of the constructor's arguments. However, this is currently discouraged as it's not possible to annotate a specific class and therefore it's constructors, which may cause significant increase in compilation time.

```swift
ConstructorWithDefaultArgumentsClass(param1: "234")
```

---
[Table of contents](/README.md)