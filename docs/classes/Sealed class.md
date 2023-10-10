## Sealed class

A class with heirs is generated. Passing to a switch statement requires a default case. Improved interop available with SKIE.

### Explanations

In Kotlin, sealed classes can be used in when-expressions, which can hint to the programmer about forgotten branches:

```kotlin
sealed class SealedClass {
    object Object : SealedClass()

    class Simple(val param1: String) : SealedClass()

    data class Data(val param1: String, val param2: Boolean) : SealedClass()
}

private fun example(s: SealedClass) {
    when (s) {
        SealedClass.Object -> println("Object")
        is SealedClass.Simple -> println("Simple")
        is SealedClass.Data -> println("Data")
    }
}
```

But in Swift, such a class will be converted as a normal class with descendants, and a default case is required for a switch statement.

```switch
func example(s: SealedClass) {
    switch s {
    case is SealedClass.Object: print("object")
    case is SealedClass.Simple: print("simple")
    case is SealedClass.Data: print("data")
    default: print("Sad")
    }
}
```

In Swift, enums take on the role of sealed classes, and custom bridge code could be written to convert sealed classes to Swift enums.

```swift
enum SealedSwift {
    
    case object
    case simple(String)
    case data(String, Bool)

    public init(_ obj: SealedClass) {
        if obj is SealedClass.Object {
            self = .object
        } else if let obj = obj as? SealedClass.Simple {
            self = .simple(obj.param1)
        } else if let obj = obj as? SealedClass.Data {
            self = .data(obj.param1, obj.param2)
        } else {
            fatalError("SealedSwift not syncronized with SealedClass class")
        }
    }

}

// Usage
func switchUsage(sealedClass: SealedClass) {
    switch SealedSwift(sealedClass){
        case .object:
            print("object")
        case let .simple(param1):
            print("simple \(param1)")
        case let .data(param1, param2):
            print("data \(param1) \(param2)")
    }
}
```

### SKIE

SKIE creates Swift enum hierarchies to match the sealed class, and a function (onEnum) to access them. Access a sealed class in Swift as if it was an enum.

```swift
func example(s: SealedClass) {
    switch onEnum(of: s) {
        case .object: print("object")
        case .simple(let simple): print("simple \(simple.param1)")
        case .data(let data): print("data \(data.param1) \(data.param2)")
    }
}
```

---
[Table of contents](/README.md)